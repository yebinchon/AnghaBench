
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int dummy; } ;


 int ZFCP_SET ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int zfcp_erp_modify_unit_status (struct zfcp_unit*,char*,void*,int ,int ) ;

void zfcp_erp_unit_failed(struct zfcp_unit *unit, char *id, void *ref)
{
 zfcp_erp_modify_unit_status(unit, id, ref,
        ZFCP_STATUS_COMMON_ERP_FAILED, ZFCP_SET);
}
