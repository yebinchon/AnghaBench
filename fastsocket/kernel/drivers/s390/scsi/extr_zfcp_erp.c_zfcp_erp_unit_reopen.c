
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_unit {struct zfcp_port* port; } ;
struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int erp_lock; } ;
struct TYPE_2__ {int config_lock; } ;


 int _zfcp_erp_unit_reopen (struct zfcp_unit*,int,char*,void*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;
 TYPE_1__ zfcp_data ;

void zfcp_erp_unit_reopen(struct zfcp_unit *unit, int clear, char *id,
     void *ref)
{
 unsigned long flags;
 struct zfcp_port *port = unit->port;
 struct zfcp_adapter *adapter = port->adapter;

 read_lock_irqsave(&zfcp_data.config_lock, flags);
 write_lock(&adapter->erp_lock);
 _zfcp_erp_unit_reopen(unit, clear, id, ref);
 write_unlock(&adapter->erp_lock);
 read_unlock_irqrestore(&zfcp_data.config_lock, flags);
}
