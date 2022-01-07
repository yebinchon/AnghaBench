
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int iocfc; int plog; } ;


 int BFA_PL_EID_MISC ;
 int BFA_PL_MID_HAL ;
 int IOCFC_E_DISABLE ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;

void
bfa_iocfc_disable(struct bfa_s *bfa)
{
 bfa_plog_str(bfa->plog, BFA_PL_MID_HAL, BFA_PL_EID_MISC, 0,
       "IOC Disable");

 bfa_fsm_send_event(&bfa->iocfc, IOCFC_E_DISABLE);
}
