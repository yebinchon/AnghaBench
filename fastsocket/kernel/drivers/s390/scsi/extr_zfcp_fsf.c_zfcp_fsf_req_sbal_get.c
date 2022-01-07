
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio {int req_q_full; struct zfcp_adapter* adapter; int req_q_lock; int req_q_wq; } ;
struct zfcp_adapter {int status; } ;


 int EIO ;
 int HZ ;
 int ZFCP_STATUS_ADAPTER_QDIOUP ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 long wait_event_interruptible_lock_bh_timeout (int ,int ,int ,int) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_fsf_sbal_check (struct zfcp_qdio*) ;

__attribute__((used)) static int zfcp_fsf_req_sbal_get(struct zfcp_qdio *qdio)
{
 struct zfcp_adapter *adapter = qdio->adapter;
 long ret;

 ret = wait_event_interruptible_lock_bh_timeout(qdio->req_q_wq,
         zfcp_fsf_sbal_check(qdio), qdio->req_q_lock, 5 * HZ);

 if (!(atomic_read(&qdio->adapter->status) & ZFCP_STATUS_ADAPTER_QDIOUP))
  return -EIO;

 if (ret > 0)
  return 0;

 if (!ret) {
  atomic_inc(&qdio->req_q_full);

  zfcp_erp_adapter_reopen(adapter, 0, "fsrsg_1", ((void*)0));
 }

 return -EIO;
}
