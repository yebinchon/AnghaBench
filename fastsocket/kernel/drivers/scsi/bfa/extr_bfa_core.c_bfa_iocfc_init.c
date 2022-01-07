
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int iocfc; } ;


 int IOCFC_E_INIT ;
 int bfa_fsm_send_event (int *,int ) ;

void
bfa_iocfc_init(struct bfa_s *bfa)
{
 bfa_fsm_send_event(&bfa->iocfc, IOCFC_E_INIT);
}
