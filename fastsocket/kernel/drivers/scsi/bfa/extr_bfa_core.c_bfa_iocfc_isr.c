
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_id; } ;
union bfi_iocfc_i2h_msg_u {TYPE_1__ mh; } ;
struct bfi_mbmsg_s {int dummy; } ;
struct bfi_faa_addr_msg_s {int dummy; } ;
struct bfa_iocfc_s {int updateq_cbarg; int (* updateq_cbfn ) (int ,int ) ;} ;
struct bfa_s {struct bfa_iocfc_s iocfc; } ;
typedef int bfi_faa_query_rsp_t ;


 int BFA_STATUS_OK ;




 int WARN_ON (int) ;
 int bfa_faa_query_reply (struct bfa_iocfc_s*,int *) ;
 int bfa_iocfc_cfgrsp (struct bfa_s*) ;
 int bfa_iocfc_process_faa_addr (struct bfa_s*,struct bfi_faa_addr_msg_s*) ;
 int bfa_trc (struct bfa_s*,int) ;
 int stub1 (int ,int ) ;

void
bfa_iocfc_isr(void *bfaarg, struct bfi_mbmsg_s *m)
{
 struct bfa_s *bfa = bfaarg;
 struct bfa_iocfc_s *iocfc = &bfa->iocfc;
 union bfi_iocfc_i2h_msg_u *msg;

 msg = (union bfi_iocfc_i2h_msg_u *) m;
 bfa_trc(bfa, msg->mh.msg_id);

 switch (msg->mh.msg_id) {
 case 130:
  bfa_iocfc_cfgrsp(bfa);
  break;
 case 128:
  iocfc->updateq_cbfn(iocfc->updateq_cbarg, BFA_STATUS_OK);
  break;
 case 131:
  bfa_iocfc_process_faa_addr(bfa,
    (struct bfi_faa_addr_msg_s *)msg);
  break;
 case 129:
  bfa_faa_query_reply(iocfc, (bfi_faa_query_rsp_t *)msg);
  break;
 default:
  WARN_ON(1);
 }
}
