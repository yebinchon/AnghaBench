
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gid_pn_data; scalar_t__ status_read_data; scalar_t__ status_read_req; scalar_t__ qtcb_pool; scalar_t__ scsi_abort; scalar_t__ scsi_req; scalar_t__ erp_req; } ;
struct zfcp_adapter {TYPE_1__ pool; } ;


 int mempool_destroy (scalar_t__) ;

__attribute__((used)) static void zfcp_free_low_mem_buffers(struct zfcp_adapter *adapter)
{

 if (adapter->pool.erp_req)
  mempool_destroy(adapter->pool.erp_req);
 if (adapter->pool.scsi_req)
  mempool_destroy(adapter->pool.scsi_req);
 if (adapter->pool.scsi_abort)
  mempool_destroy(adapter->pool.scsi_abort);
 if (adapter->pool.qtcb_pool)
  mempool_destroy(adapter->pool.qtcb_pool);
 if (adapter->pool.status_read_req)
  mempool_destroy(adapter->pool.status_read_req);
 if (adapter->pool.status_read_data)
  mempool_destroy(adapter->pool.status_read_data);
 if (adapter->pool.gid_pn_data)
  mempool_destroy(adapter->pool.gid_pn_data);
}
