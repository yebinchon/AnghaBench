
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int dummy; } ;


 int ZFCP_SET ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int zfcp_erp_modify_port_status (struct zfcp_port*,char*,void*,int ,int ) ;

void zfcp_erp_port_failed(struct zfcp_port *port, char *id, void *ref)
{
 zfcp_erp_modify_port_status(port, id, ref,
        ZFCP_STATUS_COMMON_ERP_FAILED, ZFCP_SET);
}
