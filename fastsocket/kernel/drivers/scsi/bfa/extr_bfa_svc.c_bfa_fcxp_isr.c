
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_id; } ;
struct bfi_msg_s {TYPE_1__ mhdr; } ;
struct bfi_fcxp_send_rsp_s {int dummy; } ;
struct bfa_s {int dummy; } ;



 int WARN_ON (int) ;
 int bfa_trc (struct bfa_s*,int) ;
 int hal_fcxp_send_comp (struct bfa_s*,struct bfi_fcxp_send_rsp_s*) ;

void
bfa_fcxp_isr(struct bfa_s *bfa, struct bfi_msg_s *msg)
{
 switch (msg->mhdr.msg_id) {
 case 128:
  hal_fcxp_send_comp(bfa, (struct bfi_fcxp_send_rsp_s *) msg);
  break;

 default:
  bfa_trc(bfa, msg->mhdr.msg_id);
  WARN_ON(1);
 }
}
