
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int dummy; } ;


 int BFA_ITNIM_SM_QRESUME ;
 int bfa_sm_send_event (struct bfa_itnim_s*,int ) ;

__attribute__((used)) static void
bfa_itnim_qresume(void *cbarg)
{
 struct bfa_itnim_s *itnim = cbarg;

 bfa_sm_send_event(itnim, BFA_ITNIM_SM_QRESUME);
}
