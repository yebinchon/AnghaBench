
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int dummy; } ;


 int ZFCP_STATUS_ERP_TIMEDOUT ;
 int zfcp_erp_notify (struct zfcp_erp_action*,int ) ;

void zfcp_erp_timeout_handler(unsigned long data)
{
 struct zfcp_erp_action *act = (struct zfcp_erp_action *) data;
 zfcp_erp_notify(act, ZFCP_STATUS_ERP_TIMEDOUT);
}
