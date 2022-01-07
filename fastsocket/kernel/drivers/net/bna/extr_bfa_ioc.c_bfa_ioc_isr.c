
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cap_bm; int port_mode; } ;
struct TYPE_3__ {int msg_id; } ;
union bfi_ioc_i2h_msg_u {TYPE_2__ fw_event; TYPE_1__ mh; } ;
struct bfi_mbmsg {int dummy; } ;
struct bfa_iocpf {int dummy; } ;
struct bfa_ioc {struct bfa_iocpf iocpf; } ;
typedef enum bfa_mode { ____Placeholder_bfa_mode } bfa_mode ;






 int BUG_ON (int) ;
 int IOCPF_E_FWRSP_DISABLE ;
 int bfa_fsm_send_event (struct bfa_iocpf*,int ) ;
 int bfa_ioc_enable_reply (struct bfa_ioc*,int,int ) ;
 int bfa_ioc_getattr_reply (struct bfa_ioc*) ;
 int bfa_ioc_stats (struct bfa_ioc*,int ) ;
 int ioc_isrs ;

__attribute__((used)) static void
bfa_ioc_isr(struct bfa_ioc *ioc, struct bfi_mbmsg *m)
{
 union bfi_ioc_i2h_msg_u *msg;
 struct bfa_iocpf *iocpf = &ioc->iocpf;

 msg = (union bfi_ioc_i2h_msg_u *) m;

 bfa_ioc_stats(ioc, ioc_isrs);

 switch (msg->mh.msg_id) {
 case 128:
  break;

 case 130:
  bfa_ioc_enable_reply(ioc,
   (enum bfa_mode)msg->fw_event.port_mode,
   msg->fw_event.cap_bm);
  break;

 case 131:
  bfa_fsm_send_event(iocpf, IOCPF_E_FWRSP_DISABLE);
  break;

 case 129:
  bfa_ioc_getattr_reply(ioc);
  break;

 default:
  BUG_ON(1);
 }
}
