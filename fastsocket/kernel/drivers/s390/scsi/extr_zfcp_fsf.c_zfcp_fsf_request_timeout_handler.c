
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_qdio_siosl (struct zfcp_adapter*) ;

__attribute__((used)) static void zfcp_fsf_request_timeout_handler(unsigned long data)
{
 struct zfcp_adapter *adapter = (struct zfcp_adapter *) data;
 zfcp_qdio_siosl(adapter);
 zfcp_erp_adapter_reopen(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
    "fsrth_1", ((void*)0));
}
