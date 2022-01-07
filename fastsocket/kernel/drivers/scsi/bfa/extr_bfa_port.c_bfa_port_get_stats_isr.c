
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union bfa_port_stats_u {int dummy; } bfa_port_stats_u ;
struct timeval {scalar_t__ tv_sec; } ;
struct TYPE_5__ {int kva; } ;
struct bfa_port_s {int (* stats_cbfn ) (int ,scalar_t__) ;int stats_cbarg; scalar_t__ stats_reset_time; TYPE_3__* stats; TYPE_1__ stats_dma; int stats_busy; scalar_t__ stats_status; } ;
typedef scalar_t__ bfa_status_t ;
struct TYPE_6__ {scalar_t__ secs_reset; } ;
struct TYPE_7__ {TYPE_2__ fc; } ;


 int BFA_FALSE ;
 scalar_t__ BFA_STATUS_OK ;
 int bfa_port_stats_swap (struct bfa_port_s*,TYPE_3__*) ;
 int do_gettimeofday (struct timeval*) ;
 int memcpy (TYPE_3__*,int ,int) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void
bfa_port_get_stats_isr(struct bfa_port_s *port, bfa_status_t status)
{
 port->stats_status = status;
 port->stats_busy = BFA_FALSE;

 if (status == BFA_STATUS_OK) {
  struct timeval tv;

  memcpy(port->stats, port->stats_dma.kva,
         sizeof(union bfa_port_stats_u));
  bfa_port_stats_swap(port, port->stats);

  do_gettimeofday(&tv);
  port->stats->fc.secs_reset = tv.tv_sec - port->stats_reset_time;
 }

 if (port->stats_cbfn) {
  port->stats_cbfn(port->stats_cbarg, status);
  port->stats_cbfn = ((void*)0);
 }
}
