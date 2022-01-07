
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioc_sem_reg; } ;
struct bfa_ioc_s {int iocpf; TYPE_1__ ioc_regs; } ;


 int IOCPF_E_SEMLOCKED ;
 int IOCPF_E_SEM_ERROR ;
 int WARN_ON (int) ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_sem_timer_start (struct bfa_ioc_s*) ;
 int readl (int ) ;

__attribute__((used)) static void
bfa_ioc_hw_sem_get(struct bfa_ioc_s *ioc)
{
 u32 r32;





 r32 = readl(ioc->ioc_regs.ioc_sem_reg);
 if (r32 == ~0) {
  WARN_ON(r32 == ~0);
  bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_SEM_ERROR);
  return;
 }
 if (!(r32 & 1)) {
  bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_SEMLOCKED);
  return;
 }

 bfa_sem_timer_start(ioc);
}
