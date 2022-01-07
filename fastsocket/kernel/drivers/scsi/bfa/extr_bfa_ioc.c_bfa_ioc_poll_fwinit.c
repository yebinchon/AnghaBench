
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int poll_time; } ;
struct bfa_ioc_s {TYPE_1__ iocpf; } ;


 scalar_t__ BFA_IOC_POLL_TOV ;
 int BFA_IOC_TOV ;
 scalar_t__ BFI_IOC_DISABLED ;
 int IOCPF_E_FWREADY ;
 int bfa_fsm_send_event (TYPE_1__*,int ) ;
 scalar_t__ bfa_ioc_get_cur_ioc_fwstate (struct bfa_ioc_s*) ;
 int bfa_iocpf_poll_timer_start (struct bfa_ioc_s*) ;
 int bfa_iocpf_timeout (struct bfa_ioc_s*) ;
 int bfa_trc (struct bfa_ioc_s*,scalar_t__) ;

__attribute__((used)) static void
bfa_ioc_poll_fwinit(struct bfa_ioc_s *ioc)
{
 u32 fwstate = bfa_ioc_get_cur_ioc_fwstate(ioc);

 bfa_trc(ioc, fwstate);

 if (fwstate == BFI_IOC_DISABLED) {
  bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_FWREADY);
  return;
 }

 if (ioc->iocpf.poll_time >= (3 * BFA_IOC_TOV))
  bfa_iocpf_timeout(ioc);
 else {
  ioc->iocpf.poll_time += BFA_IOC_POLL_TOV;
  bfa_iocpf_poll_timer_start(ioc);
 }
}
