
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fc_rport {int dummy; } ;
struct TYPE_6__ {TYPE_1__* vha; struct fc_rport* drport; struct fc_rport* rport; } ;
typedef TYPE_3__ fc_port_t ;
struct TYPE_5__ {int host_lock; } ;
struct TYPE_4__ {TYPE_2__* host; } ;


 int fc_remote_port_delete (struct fc_rport*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void
qla2x00_rport_del(void *data)
{
 fc_port_t *fcport = data;
 struct fc_rport *rport;
 unsigned long flags;

 spin_lock_irqsave(fcport->vha->host->host_lock, flags);
 rport = fcport->drport ? fcport->drport: fcport->rport;
 fcport->drport = ((void*)0);
 spin_unlock_irqrestore(fcport->vha->host->host_lock, flags);
 if (rport)
  fc_remote_port_delete(rport);
}
