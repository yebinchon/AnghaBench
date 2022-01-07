
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int smem_page_start; int host_page_num_fn; int smem_pg0; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
struct bfa_diag_s {scalar_t__ block; int status; int cbarg; int (* cbfn ) (int ,int ) ;scalar_t__ timer_active; struct bfa_diag_memtest_result* result; struct bfa_ioc_s* ioc; } ;
struct bfa_diag_memtest_result {scalar_t__ status; scalar_t__ addr; scalar_t__ exp; scalar_t__ act; scalar_t__ err_status; scalar_t__ err_status1; scalar_t__ err_addr; } ;


 int BFA_STATUS_MEMTEST_FAILED ;
 int BFA_STATUS_OK ;
 int BFI_BOOT_MEMTEST_RES_ADDR ;
 scalar_t__ BFI_BOOT_MEMTEST_RES_SIG ;
 int PSS_SMEM_PGNUM (int ,int) ;
 int PSS_SMEM_PGOFF (int) ;
 int bfa_ioc_reset_fwstate (struct bfa_ioc_s*) ;
 int bfa_mem_read (int ,int) ;
 int bfa_trc (struct bfa_diag_s*,scalar_t__) ;
 int stub1 (int ,int ) ;
 void* swab32 (scalar_t__) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_diag_memtest_done(void *cbarg)
{
 struct bfa_diag_s *diag = cbarg;
 struct bfa_ioc_s *ioc = diag->ioc;
 struct bfa_diag_memtest_result *res = diag->result;
 u32 loff = BFI_BOOT_MEMTEST_RES_ADDR;
 u32 pgnum, pgoff, i;

 pgnum = PSS_SMEM_PGNUM(ioc->ioc_regs.smem_pg0, loff);
 pgoff = PSS_SMEM_PGOFF(loff);

 writel(pgnum, ioc->ioc_regs.host_page_num_fn);

 for (i = 0; i < (sizeof(struct bfa_diag_memtest_result) /
    sizeof(u32)); i++) {

  *((u32 *) res + i) =
   bfa_mem_read(ioc->ioc_regs.smem_page_start, loff);
  loff += sizeof(u32);
 }


 bfa_ioc_reset_fwstate(ioc);

 res->status = swab32(res->status);
 bfa_trc(diag, res->status);

 if (res->status == BFI_BOOT_MEMTEST_RES_SIG)
  diag->status = BFA_STATUS_OK;
 else {
  diag->status = BFA_STATUS_MEMTEST_FAILED;
  res->addr = swab32(res->addr);
  res->exp = swab32(res->exp);
  res->act = swab32(res->act);
  res->err_status = swab32(res->err_status);
  res->err_status1 = swab32(res->err_status1);
  res->err_addr = swab32(res->err_addr);
  bfa_trc(diag, res->addr);
  bfa_trc(diag, res->exp);
  bfa_trc(diag, res->act);
  bfa_trc(diag, res->err_status);
  bfa_trc(diag, res->err_status1);
  bfa_trc(diag, res->err_addr);
 }
 diag->timer_active = 0;
 diag->cbfn(diag->cbarg, diag->status);
 diag->block = 0;
}
