
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct bfi_ioc_image_hdr_s {int exec; } ;
struct bfa_iocpf_s {TYPE_2__* ioc; } ;
struct TYPE_9__ {int ioc_init_sem_reg; int smem_page_start; int host_page_num_fn; int smem_pg0; } ;
struct TYPE_10__ {TYPE_1__ ioc_regs; } ;


 scalar_t__ BFI_FWBOOT_TYPE_NORMAL ;
 int BFI_IOC_UNINIT ;
 int PSS_SMEM_PGNUM (int ,int) ;
 int PSS_SMEM_PGOFF (int) ;
 int bfa_ioc_fwver_get (TYPE_2__*,struct bfi_ioc_image_hdr_s*) ;
 int bfa_ioc_get_cur_ioc_fwstate (TYPE_2__*) ;
 int bfa_ioc_hw_sem_get (TYPE_2__*) ;
 int bfa_ioc_ownership_reset (TYPE_2__*) ;
 int bfa_ioc_set_alt_ioc_fwstate (TYPE_2__*,int) ;
 int bfa_ioc_set_cur_ioc_fwstate (TYPE_2__*,int) ;
 int bfa_mem_write (int ,int,int ) ;
 int bfa_trc (TYPE_2__*,int) ;
 int readl (int ) ;
 int swab32 (int ) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_fwcheck_entry(struct bfa_iocpf_s *iocpf)
{
 struct bfi_ioc_image_hdr_s fwhdr;
 u32 r32, fwstate, pgnum, pgoff, loff = 0;
 int i;




 r32 = readl(iocpf->ioc->ioc_regs.ioc_init_sem_reg);
 while (r32 & 0x1) {
  udelay(20);
  r32 = readl(iocpf->ioc->ioc_regs.ioc_init_sem_reg);
 }


 fwstate = bfa_ioc_get_cur_ioc_fwstate(iocpf->ioc);
 if (fwstate == BFI_IOC_UNINIT) {
  writel(1, iocpf->ioc->ioc_regs.ioc_init_sem_reg);
  goto sem_get;
 }

 bfa_ioc_fwver_get(iocpf->ioc, &fwhdr);

 if (swab32(fwhdr.exec) == BFI_FWBOOT_TYPE_NORMAL) {
  writel(1, iocpf->ioc->ioc_regs.ioc_init_sem_reg);
  goto sem_get;
 }




 pgnum = PSS_SMEM_PGNUM(iocpf->ioc->ioc_regs.smem_pg0, loff);
 pgoff = PSS_SMEM_PGOFF(loff);
 writel(pgnum, iocpf->ioc->ioc_regs.host_page_num_fn);

 for (i = 0; i < sizeof(struct bfi_ioc_image_hdr_s) / sizeof(u32); i++) {
  bfa_mem_write(iocpf->ioc->ioc_regs.smem_page_start, loff, 0);
  loff += sizeof(u32);
 }

 bfa_trc(iocpf->ioc, fwstate);
 bfa_trc(iocpf->ioc, swab32(fwhdr.exec));
 bfa_ioc_set_cur_ioc_fwstate(iocpf->ioc, BFI_IOC_UNINIT);
 bfa_ioc_set_alt_ioc_fwstate(iocpf->ioc, BFI_IOC_UNINIT);




 bfa_ioc_ownership_reset(iocpf->ioc);




 writel(1, iocpf->ioc->ioc_regs.ioc_init_sem_reg);

sem_get:
 bfa_ioc_hw_sem_get(iocpf->ioc);
}
