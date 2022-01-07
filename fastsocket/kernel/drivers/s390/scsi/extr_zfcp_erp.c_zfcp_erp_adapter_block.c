
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;


 int ZFCP_CLEAR ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int zfcp_erp_modify_adapter_status (struct zfcp_adapter*,char*,int *,int,int ) ;

__attribute__((used)) static void zfcp_erp_adapter_block(struct zfcp_adapter *adapter, int mask)
{
 zfcp_erp_modify_adapter_status(adapter, "erablk1", ((void*)0),
           ZFCP_STATUS_COMMON_UNBLOCKED | mask,
           ZFCP_CLEAR);
}
