
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio {int req_q_wq; } ;
struct zfcp_erp_action {TYPE_1__* adapter; } ;
struct TYPE_2__ {int status; struct zfcp_qdio* qdio; } ;


 int ZFCP_ERP_FAILED ;
 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_ADAPTER_QDIOUP ;
 int atomic_set_mask (int ,int *) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ zfcp_qdio_open (struct zfcp_qdio*) ;

__attribute__((used)) static int zfcp_erp_adapter_strategy_open_qdio(struct zfcp_erp_action *act)
{
 struct zfcp_qdio *qdio = act->adapter->qdio;

 if (zfcp_qdio_open(qdio))
  return ZFCP_ERP_FAILED;
 init_waitqueue_head(&qdio->req_q_wq);
 atomic_set_mask(ZFCP_STATUS_ADAPTER_QDIOUP, &act->adapter->status);
 return ZFCP_ERP_SUCCEEDED;
}
