
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int status; } ;


 int ZFCP_STATUS_COMMON_ACCESS_BOXED ;
 int ZFCP_STATUS_COMMON_ACCESS_DENIED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_read (int *) ;
 int zfcp_erp_unit_reopen (struct zfcp_unit*,int ,char*,void*) ;

__attribute__((used)) static void zfcp_erp_unit_access_changed(struct zfcp_unit *unit, char *id,
      void *ref)
{
 int status = atomic_read(&unit->status);
 if (!(status & (ZFCP_STATUS_COMMON_ACCESS_DENIED |
   ZFCP_STATUS_COMMON_ACCESS_BOXED)))
  return;

 zfcp_erp_unit_reopen(unit, ZFCP_STATUS_COMMON_ERP_FAILED, id, ref);
}
