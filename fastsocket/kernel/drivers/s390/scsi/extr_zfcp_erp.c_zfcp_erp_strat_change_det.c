
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int atomic_t ;


 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_ERP_CLOSE_ONLY ;
 int atomic_read (int *) ;

__attribute__((used)) static int zfcp_erp_strat_change_det(atomic_t *target_status, u32 erp_status)
{
 int status = atomic_read(target_status);

 if ((status & ZFCP_STATUS_COMMON_RUNNING) &&
     (erp_status & ZFCP_STATUS_ERP_CLOSE_ONLY))
  return 1;

 if (!(status & ZFCP_STATUS_COMMON_RUNNING) &&
     !(erp_status & ZFCP_STATUS_ERP_CLOSE_ONLY))
  return 1;

 return 0;
}
