
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int status; } ;
struct TYPE_9__ {int status; } ;
struct TYPE_8__ {int status; } ;
struct TYPE_7__ {int status; } ;
union bfi_port_i2h_msg_u {TYPE_5__ clearstats_rsp; TYPE_4__ getstats_rsp; TYPE_3__ disable_rsp; TYPE_2__ enable_rsp; } ;
struct TYPE_6__ {int msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfa_port_s {int stats_busy; int endis_pending; } ;


 int BFA_FALSE ;




 int WARN_ON (int) ;
 int bfa_port_clear_stats_isr (struct bfa_port_s*,int ) ;
 int bfa_port_disable_isr (struct bfa_port_s*,int ) ;
 int bfa_port_enable_isr (struct bfa_port_s*,int ) ;
 int bfa_port_get_stats_isr (struct bfa_port_s*,int ) ;
 int bfa_trc (struct bfa_port_s*,int ) ;

__attribute__((used)) static void
bfa_port_isr(void *cbarg, struct bfi_mbmsg_s *m)
{
 struct bfa_port_s *port = (struct bfa_port_s *) cbarg;
 union bfi_port_i2h_msg_u *i2hmsg;

 i2hmsg = (union bfi_port_i2h_msg_u *) m;
 bfa_trc(port, m->mh.msg_id);

 switch (m->mh.msg_id) {
 case 129:
  if (port->endis_pending == BFA_FALSE)
   break;
  bfa_port_enable_isr(port, i2hmsg->enable_rsp.status);
  break;

 case 130:
  if (port->endis_pending == BFA_FALSE)
   break;
  bfa_port_disable_isr(port, i2hmsg->disable_rsp.status);
  break;

 case 128:

  if (port->stats_busy == BFA_FALSE)
   break;
  bfa_port_get_stats_isr(port, i2hmsg->getstats_rsp.status);
  break;

 case 131:
  if (port->stats_busy == BFA_FALSE)
   break;
  bfa_port_clear_stats_isr(port, i2hmsg->clearstats_rsp.status);
  break;

 default:
  WARN_ON(1);
 }
}
