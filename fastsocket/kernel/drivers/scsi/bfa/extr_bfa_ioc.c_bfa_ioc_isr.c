
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int msg_id; } ;
struct TYPE_3__ {int cap_bm; int port_mode; } ;
union bfi_ioc_i2h_msg_u {TYPE_2__ mh; TYPE_1__ fw_event; } ;
struct bfi_mbmsg_s {int dummy; } ;
struct bfa_iocpf_s {int dummy; } ;
struct bfa_ioc_s {int port_mode; int port_mode_cfg; int ad_cap_bm; struct bfa_iocpf_s iocpf; } ;
typedef enum bfa_mode_s { ____Placeholder_bfa_mode_s } bfa_mode_s ;






 int IOCPF_E_FWRSP_DISABLE ;
 int IOCPF_E_FWRSP_ENABLE ;
 int WARN_ON (int) ;
 int bfa_fsm_send_event (struct bfa_iocpf_s*,int ) ;
 int bfa_ioc_getattr_reply (struct bfa_ioc_s*) ;
 int bfa_ioc_stats (struct bfa_ioc_s*,int ) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int ioc_isrs ;

void
bfa_ioc_isr(struct bfa_ioc_s *ioc, struct bfi_mbmsg_s *m)
{
 union bfi_ioc_i2h_msg_u *msg;
 struct bfa_iocpf_s *iocpf = &ioc->iocpf;

 msg = (union bfi_ioc_i2h_msg_u *) m;

 bfa_ioc_stats(ioc, ioc_isrs);

 switch (msg->mh.msg_id) {
 case 128:
  break;

 case 130:
  ioc->port_mode = ioc->port_mode_cfg =
    (enum bfa_mode_s)msg->fw_event.port_mode;
  ioc->ad_cap_bm = msg->fw_event.cap_bm;
  bfa_fsm_send_event(iocpf, IOCPF_E_FWRSP_ENABLE);
  break;

 case 131:
  bfa_fsm_send_event(iocpf, IOCPF_E_FWRSP_DISABLE);
  break;

 case 129:
  bfa_ioc_getattr_reply(ioc);
  break;

 default:
  bfa_trc(ioc, msg->mh.msg_id);
  WARN_ON(1);
 }
}
