
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int smem_page_start; int host_page_num_fn; int smem_pg0; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; int port1_mode; int port0_mode; int asic_mode; int asic_gen; } ;


 scalar_t__ BFA_IOC_FLASH_CHUNK_ADDR (scalar_t__) ;
 scalar_t__ BFA_IOC_FLASH_CHUNK_NO (scalar_t__) ;
 size_t BFA_IOC_FLASH_OFFSET_IN_CHUNK (scalar_t__) ;
 scalar_t__ BFI_FWBOOT_DEVMODE (int ,int ,int ,int ) ;
 scalar_t__ BFI_FWBOOT_DEVMODE_OFF ;
 scalar_t__ BFI_FWBOOT_ENV_OFF ;
 scalar_t__ BFI_FWBOOT_TYPE_OFF ;
 scalar_t__ PSS_SMEM_PGNUM (int ,scalar_t__) ;
 scalar_t__ PSS_SMEM_PGOFF (scalar_t__) ;
 scalar_t__* bfa_cb_image_get_chunk (int ,scalar_t__) ;
 scalar_t__ bfa_cb_image_get_size (int ) ;
 int bfa_ioc_asic_gen (struct bfa_ioc_s*) ;
 int bfa_mem_write (int ,scalar_t__,int ) ;
 int bfa_trc (struct bfa_ioc_s*,scalar_t__) ;
 int cpu_to_le32 (scalar_t__) ;
 int swab32 (scalar_t__) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static void
bfa_ioc_download_fw(struct bfa_ioc_s *ioc, u32 boot_type,
      u32 boot_env)
{
 u32 *fwimg;
 u32 pgnum, pgoff;
 u32 loff = 0;
 u32 chunkno = 0;
 u32 i;
 u32 asicmode;

 bfa_trc(ioc, bfa_cb_image_get_size(bfa_ioc_asic_gen(ioc)));
 fwimg = bfa_cb_image_get_chunk(bfa_ioc_asic_gen(ioc), chunkno);

 pgnum = PSS_SMEM_PGNUM(ioc->ioc_regs.smem_pg0, loff);
 pgoff = PSS_SMEM_PGOFF(loff);

 writel(pgnum, ioc->ioc_regs.host_page_num_fn);

 for (i = 0; i < bfa_cb_image_get_size(bfa_ioc_asic_gen(ioc)); i++) {

  if (BFA_IOC_FLASH_CHUNK_NO(i) != chunkno) {
   chunkno = BFA_IOC_FLASH_CHUNK_NO(i);
   fwimg = bfa_cb_image_get_chunk(bfa_ioc_asic_gen(ioc),
     BFA_IOC_FLASH_CHUNK_ADDR(chunkno));
  }




  bfa_mem_write(ioc->ioc_regs.smem_page_start, loff,
   cpu_to_le32(fwimg[BFA_IOC_FLASH_OFFSET_IN_CHUNK(i)]));

  loff += sizeof(u32);




  loff = PSS_SMEM_PGOFF(loff);
  if (loff == 0) {
   pgnum++;
   writel(pgnum, ioc->ioc_regs.host_page_num_fn);
  }
 }

 writel(PSS_SMEM_PGNUM(ioc->ioc_regs.smem_pg0, 0),
   ioc->ioc_regs.host_page_num_fn);




 asicmode = BFI_FWBOOT_DEVMODE(ioc->asic_gen, ioc->asic_mode,
    ioc->port0_mode, ioc->port1_mode);
 bfa_mem_write(ioc->ioc_regs.smem_page_start, BFI_FWBOOT_DEVMODE_OFF,
   swab32(asicmode));
 bfa_mem_write(ioc->ioc_regs.smem_page_start, BFI_FWBOOT_TYPE_OFF,
   swab32(boot_type));
 bfa_mem_write(ioc->ioc_regs.smem_page_start, BFI_FWBOOT_ENV_OFF,
   swab32(boot_env));
}
