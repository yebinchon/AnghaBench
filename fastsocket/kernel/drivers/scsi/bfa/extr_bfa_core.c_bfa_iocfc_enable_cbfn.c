
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int iocfc; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;


 int BFA_STATUS_OK ;
 int IOCFC_E_IOC_ENABLED ;
 int IOCFC_E_IOC_FAILED ;
 int bfa_fsm_send_event (int *,int ) ;

__attribute__((used)) static void
bfa_iocfc_enable_cbfn(void *bfa_arg, enum bfa_status status)
{
 struct bfa_s *bfa = bfa_arg;

 if (status == BFA_STATUS_OK)
  bfa_fsm_send_event(&bfa->iocfc, IOCFC_E_IOC_ENABLED);
 else
  bfa_fsm_send_event(&bfa->iocfc, IOCFC_E_IOC_FAILED);
}
