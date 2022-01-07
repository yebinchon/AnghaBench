
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_id; } ;
union bfi_cee_i2h_msg_u {TYPE_1__ mh; } ;
struct bfi_mbmsg_s {int dummy; } ;
struct bfi_cee_get_rsp_s {int cmd_status; } ;
struct bfa_cee_s {int dummy; } ;





 int WARN_ON (int) ;
 int bfa_cee_get_attr_isr (struct bfa_cee_s*,int) ;
 int bfa_cee_get_stats_isr (struct bfa_cee_s*,int) ;
 int bfa_cee_reset_stats_isr (struct bfa_cee_s*,int) ;
 int bfa_trc (struct bfa_cee_s*,int) ;

void
bfa_cee_isr(void *cbarg, struct bfi_mbmsg_s *m)
{
 union bfi_cee_i2h_msg_u *msg;
 struct bfi_cee_get_rsp_s *get_rsp;
 struct bfa_cee_s *cee = (struct bfa_cee_s *) cbarg;
 msg = (union bfi_cee_i2h_msg_u *) m;
 get_rsp = (struct bfi_cee_get_rsp_s *) m;
 bfa_trc(cee, msg->mh.msg_id);
 switch (msg->mh.msg_id) {
 case 130:
  bfa_trc(cee, get_rsp->cmd_status);
  bfa_cee_get_attr_isr(cee, get_rsp->cmd_status);
  break;
 case 129:
  bfa_cee_get_stats_isr(cee, get_rsp->cmd_status);
  break;
 case 128:
  bfa_cee_reset_stats_isr(cee, get_rsp->cmd_status);
  break;
 default:
  WARN_ON(1);
 }
}
