
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qib_ibport {TYPE_1__* sm_ah; struct ib_mad_agent* send_agent; } ;
struct qib_ibdev {int dummy; } ;
struct qib_devdata {int num_pports; TYPE_3__* pport; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_4__ timer; } ;
struct TYPE_7__ {TYPE_2__ cong_stats; struct qib_ibport ibport_data; } ;
struct TYPE_5__ {int ibah; } ;


 struct qib_devdata* dd_from_dev (struct qib_ibdev*) ;
 int del_timer_sync (TYPE_4__*) ;
 int ib_destroy_ah (int *) ;
 int ib_unregister_mad_agent (struct ib_mad_agent*) ;

void qib_free_agents(struct qib_ibdev *dev)
{
 struct qib_devdata *dd = dd_from_dev(dev);
 struct ib_mad_agent *agent;
 struct qib_ibport *ibp;
 int p;

 for (p = 0; p < dd->num_pports; p++) {
  ibp = &dd->pport[p].ibport_data;
  if (ibp->send_agent) {
   agent = ibp->send_agent;
   ibp->send_agent = ((void*)0);
   ib_unregister_mad_agent(agent);
  }
  if (ibp->sm_ah) {
   ib_destroy_ah(&ibp->sm_ah->ibah);
   ibp->sm_ah = ((void*)0);
  }
  if (dd->pport[p].cong_stats.timer.data)
   del_timer_sync(&dd->pport[p].cong_stats.timer);
 }
}
