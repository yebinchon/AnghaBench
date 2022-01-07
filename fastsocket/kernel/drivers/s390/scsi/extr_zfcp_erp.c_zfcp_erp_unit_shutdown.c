
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int zfcp_erp_unit_reopen (struct zfcp_unit*,int,char*,void*) ;

void zfcp_erp_unit_shutdown(struct zfcp_unit *unit, int clear, char *id,
       void *ref)
{
 int flags = ZFCP_STATUS_COMMON_RUNNING | ZFCP_STATUS_COMMON_ERP_FAILED;
 zfcp_erp_unit_reopen(unit, clear | flags, id, ref);
}
