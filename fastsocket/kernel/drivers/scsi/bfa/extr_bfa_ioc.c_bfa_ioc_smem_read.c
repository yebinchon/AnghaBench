
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioc_init_sem_reg; int host_page_num_fn; int smem_pg0; int smem_page_start; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef int bfa_status_t ;
typedef int __be32 ;


 scalar_t__ BFA_FALSE ;
 int BFA_STATUS_FAILED ;
 int BFA_STATUS_OK ;
 int PSS_SMEM_PGNUM (int ,int) ;
 int PSS_SMEM_PGOFF (int) ;
 scalar_t__ bfa_ioc_sem_get (int ) ;
 int bfa_mem_read (int ,int) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int readl (int ) ;
 int swab32 (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static bfa_status_t
bfa_ioc_smem_read(struct bfa_ioc_s *ioc, void *tbuf, u32 soff, u32 sz)
{
 u32 pgnum, loff;
 __be32 r32;
 int i, len;
 u32 *buf = tbuf;

 pgnum = PSS_SMEM_PGNUM(ioc->ioc_regs.smem_pg0, soff);
 loff = PSS_SMEM_PGOFF(soff);
 bfa_trc(ioc, pgnum);
 bfa_trc(ioc, loff);
 bfa_trc(ioc, sz);




 if (BFA_FALSE == bfa_ioc_sem_get(ioc->ioc_regs.ioc_init_sem_reg)) {
  bfa_trc(ioc, 0);
  return BFA_STATUS_FAILED;
 }

 writel(pgnum, ioc->ioc_regs.host_page_num_fn);

 len = sz/sizeof(u32);
 bfa_trc(ioc, len);
 for (i = 0; i < len; i++) {
  r32 = bfa_mem_read(ioc->ioc_regs.smem_page_start, loff);
  buf[i] = swab32(r32);
  loff += sizeof(u32);




  loff = PSS_SMEM_PGOFF(loff);
  if (loff == 0) {
   pgnum++;
   writel(pgnum, ioc->ioc_regs.host_page_num_fn);
  }
 }
 writel(PSS_SMEM_PGNUM(ioc->ioc_regs.smem_pg0, 0),
   ioc->ioc_regs.host_page_num_fn);



 readl(ioc->ioc_regs.ioc_init_sem_reg);
 writel(1, ioc->ioc_regs.ioc_init_sem_reg);

 bfa_trc(ioc, pgnum);
 return BFA_STATUS_OK;
}
