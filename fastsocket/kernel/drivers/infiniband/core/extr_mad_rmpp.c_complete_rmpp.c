
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mad_rmpp_recv {int seg_num; int cleanup_work; TYPE_1__* agent; struct ib_mad_recv_wc* rmpp_wc; int timeout_work; } ;
struct ib_mad_recv_wc {int mad_len; } ;
struct TYPE_6__ {TYPE_2__* port_priv; } ;
struct TYPE_5__ {int wq; } ;
struct TYPE_4__ {TYPE_3__* qp_info; } ;


 int ack_recv (struct mad_rmpp_recv*,struct ib_mad_recv_wc*) ;
 int cancel_delayed_work (int *) ;
 int get_mad_len (struct mad_rmpp_recv*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static struct ib_mad_recv_wc * complete_rmpp(struct mad_rmpp_recv *rmpp_recv)
{
 struct ib_mad_recv_wc *rmpp_wc;

 ack_recv(rmpp_recv, rmpp_recv->rmpp_wc);
 if (rmpp_recv->seg_num > 1)
  cancel_delayed_work(&rmpp_recv->timeout_work);

 rmpp_wc = rmpp_recv->rmpp_wc;
 rmpp_wc->mad_len = get_mad_len(rmpp_recv);

 queue_delayed_work(rmpp_recv->agent->qp_info->port_priv->wq,
      &rmpp_recv->cleanup_work, msecs_to_jiffies(10000));
 return rmpp_wc;
}
