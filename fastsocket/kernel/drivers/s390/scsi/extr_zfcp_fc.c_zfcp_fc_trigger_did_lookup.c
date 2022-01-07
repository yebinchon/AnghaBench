
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_port {int gid_pn_work; TYPE_1__* adapter; } ;
struct TYPE_2__ {int work_queue; } ;


 int queue_work (int ,int *) ;
 int zfcp_port_get (struct zfcp_port*) ;
 int zfcp_port_put (struct zfcp_port*) ;

void zfcp_fc_trigger_did_lookup(struct zfcp_port *port)
{
 zfcp_port_get(port);
 if (!queue_work(port->adapter->work_queue, &port->gid_pn_work))
  zfcp_port_put(port);
}
