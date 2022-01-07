
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_port {int dummy; } ;
struct TYPE_2__ {int config_lock; } ;


 int ZFCP_SET ;
 int ZFCP_STATUS_COMMON_ACCESS_DENIED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ zfcp_data ;
 int zfcp_erp_modify_port_status (struct zfcp_port*,char*,void*,int,int ) ;

void zfcp_erp_port_access_denied(struct zfcp_port *port, char *id, void *ref)
{
 unsigned long flags;

 read_lock_irqsave(&zfcp_data.config_lock, flags);
 zfcp_erp_modify_port_status(port, id, ref,
        ZFCP_STATUS_COMMON_ERP_FAILED |
        ZFCP_STATUS_COMMON_ACCESS_DENIED, ZFCP_SET);
 read_unlock_irqrestore(&zfcp_data.config_lock, flags);
}
