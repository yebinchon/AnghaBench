
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfa_sfp_s {int dummy; } ;




 int WARN_ON (int) ;
 int bfa_sfp_scn (struct bfa_sfp_s*,struct bfi_mbmsg_s*) ;
 int bfa_sfp_show_comp (struct bfa_sfp_s*,struct bfi_mbmsg_s*) ;
 int bfa_trc (struct bfa_sfp_s*,int) ;

void
bfa_sfp_intr(void *sfparg, struct bfi_mbmsg_s *msg)
{
 struct bfa_sfp_s *sfp = sfparg;

 switch (msg->mh.msg_id) {
 case 128:
  bfa_sfp_show_comp(sfp, msg);
  break;

 case 129:
  bfa_sfp_scn(sfp, msg);
  break;

 default:
  bfa_trc(sfp, msg->mh.msg_id);
  WARN_ON(1);
 }
}
