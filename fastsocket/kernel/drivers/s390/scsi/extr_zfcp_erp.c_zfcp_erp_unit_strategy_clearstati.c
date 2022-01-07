
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int status; } ;


 int ZFCP_STATUS_COMMON_ACCESS_DENIED ;
 int ZFCP_STATUS_UNIT_READONLY ;
 int ZFCP_STATUS_UNIT_SHARED ;
 int atomic_clear_mask (int,int *) ;

__attribute__((used)) static void zfcp_erp_unit_strategy_clearstati(struct zfcp_unit *unit)
{
 atomic_clear_mask(ZFCP_STATUS_COMMON_ACCESS_DENIED |
     ZFCP_STATUS_UNIT_SHARED |
     ZFCP_STATUS_UNIT_READONLY,
     &unit->status);
}
