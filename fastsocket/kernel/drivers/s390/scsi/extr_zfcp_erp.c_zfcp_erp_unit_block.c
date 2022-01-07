
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int dummy; } ;


 int ZFCP_CLEAR ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int zfcp_erp_modify_unit_status (struct zfcp_unit*,char*,int *,int,int ) ;

__attribute__((used)) static void zfcp_erp_unit_block(struct zfcp_unit *unit, int clear_mask)
{
 zfcp_erp_modify_unit_status(unit, "erublk1", ((void*)0),
        ZFCP_STATUS_COMMON_UNBLOCKED | clear_mask,
        ZFCP_CLEAR);
}
