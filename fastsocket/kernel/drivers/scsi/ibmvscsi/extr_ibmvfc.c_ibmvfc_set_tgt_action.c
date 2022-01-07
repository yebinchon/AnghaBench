
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_target {int action; int add_rport; } ;
typedef enum ibmvfc_target_action { ____Placeholder_ibmvfc_target_action } ibmvfc_target_action ;





__attribute__((used)) static void ibmvfc_set_tgt_action(struct ibmvfc_target *tgt,
      enum ibmvfc_target_action action)
{
 switch (tgt->action) {
 case 128:
  if (action == 129)
   tgt->action = action;
 case 129:
  break;
 default:
  if (action == 128)
   tgt->add_rport = 0;
  tgt->action = action;
  break;
 }
}
