
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int status; int gs; scalar_t__ fsf_req_seq_no; int qdio; } ;


 int ZFCP_CLEAR ;
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ;
 int ZFCP_STATUS_ADAPTER_XCONFIG_OK ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int atomic_clear_mask (int,int *) ;
 int zfcp_erp_modify_adapter_status (struct zfcp_adapter*,char*,int *,int ,int ) ;
 int zfcp_fc_wka_ports_force_offline (int ) ;
 int zfcp_fsf_req_dismiss_all (struct zfcp_adapter*) ;
 int zfcp_qdio_close (int ) ;

__attribute__((used)) static void zfcp_erp_adapter_strategy_close(struct zfcp_erp_action *act)
{
 struct zfcp_adapter *adapter = act->adapter;


 zfcp_qdio_close(adapter->qdio);
 zfcp_fsf_req_dismiss_all(adapter);
 adapter->fsf_req_seq_no = 0;
 zfcp_fc_wka_ports_force_offline(adapter->gs);

 zfcp_erp_modify_adapter_status(adapter, "erascl1", ((void*)0),
           ZFCP_STATUS_COMMON_OPEN, ZFCP_CLEAR);

 atomic_clear_mask(ZFCP_STATUS_ADAPTER_XCONFIG_OK |
     ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, &adapter->status);
}
