
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_uf_frm_rcvd_s {int dummy; } ;
struct TYPE_2__ {int msg_id; } ;
struct bfi_msg_s {TYPE_1__ mhdr; } ;
struct bfa_s {int dummy; } ;



 int WARN_ON (int) ;
 int bfa_trc (struct bfa_s*,int) ;
 int uf_recv (struct bfa_s*,struct bfi_uf_frm_rcvd_s*) ;

void
bfa_uf_isr(struct bfa_s *bfa, struct bfi_msg_s *msg)
{
 bfa_trc(bfa, msg->mhdr.msg_id);

 switch (msg->mhdr.msg_id) {
 case 128:
  uf_recv(bfa, (struct bfi_uf_frm_rcvd_s *) msg);
  break;

 default:
  bfa_trc(bfa, msg->mhdr.msg_id);
  WARN_ON(1);
 }
}
