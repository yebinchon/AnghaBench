
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_id; } ;
union bfi_cee_i2h_msg_u {TYPE_1__ mh; } ;
struct bfi_mbmsg {int dummy; } ;
struct bfi_cee_get_rsp {int cmd_status; } ;
struct bfa_cee {int dummy; } ;





 int BUG_ON (int) ;
 int bfa_cee_get_attr_isr (struct bfa_cee*,int ) ;
 int bfa_cee_get_stats_isr (struct bfa_cee*,int ) ;
 int bfa_cee_reset_stats_isr (struct bfa_cee*,int ) ;

__attribute__((used)) static void
bfa_cee_isr(void *cbarg, struct bfi_mbmsg *m)
{
 union bfi_cee_i2h_msg_u *msg;
 struct bfi_cee_get_rsp *get_rsp;
 struct bfa_cee *cee = (struct bfa_cee *) cbarg;
 msg = (union bfi_cee_i2h_msg_u *) m;
 get_rsp = (struct bfi_cee_get_rsp *) m;
 switch (msg->mh.msg_id) {
 case 130:
  bfa_cee_get_attr_isr(cee, get_rsp->cmd_status);
  break;
 case 129:
  bfa_cee_get_stats_isr(cee, get_rsp->cmd_status);
  break;
 case 128:
  bfa_cee_reset_stats_isr(cee, get_rsp->cmd_status);
  break;
 default:
  BUG_ON(1);
 }
}
