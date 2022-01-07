
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct bfa_trc_mod_s {int dummy; } ;
struct TYPE_3__ {int qe; } ;
struct bfa_port_s {int stats_reset_time; struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; void* dport_enabled; void* pbc_disabled; int * endis_cbfn; int * stats_cbfn; void* endis_pending; void* stats_busy; struct bfa_trc_mod_s* trcmod; void* dev; } ;
struct bfa_ioc_s {int notify_q; } ;


 void* BFA_FALSE ;
 int BFI_MC_PORT ;
 int WARN_ON (int) ;
 int bfa_ioc_mbox_regisr (struct bfa_ioc_s*,int ,int ,struct bfa_port_s*) ;
 int bfa_ioc_notify_init (TYPE_1__*,int ,struct bfa_port_s*) ;
 int bfa_port_isr ;
 int bfa_port_notify ;
 int bfa_q_qe_init (TYPE_1__*) ;
 int bfa_trc (struct bfa_port_s*,int ) ;
 int do_gettimeofday (struct timeval*) ;
 int list_add_tail (int *,int *) ;

void
bfa_port_attach(struct bfa_port_s *port, struct bfa_ioc_s *ioc,
   void *dev, struct bfa_trc_mod_s *trcmod)
{
 struct timeval tv;

 WARN_ON(!port);

 port->dev = dev;
 port->ioc = ioc;
 port->trcmod = trcmod;

 port->stats_busy = BFA_FALSE;
 port->endis_pending = BFA_FALSE;
 port->stats_cbfn = ((void*)0);
 port->endis_cbfn = ((void*)0);
 port->pbc_disabled = BFA_FALSE;
 port->dport_enabled = BFA_FALSE;

 bfa_ioc_mbox_regisr(port->ioc, BFI_MC_PORT, bfa_port_isr, port);
 bfa_q_qe_init(&port->ioc_notify);
 bfa_ioc_notify_init(&port->ioc_notify, bfa_port_notify, port);
 list_add_tail(&port->ioc_notify.qe, &port->ioc->notify_q);




 do_gettimeofday(&tv);
 port->stats_reset_time = tv.tv_sec;

 bfa_trc(port, 0);
}
