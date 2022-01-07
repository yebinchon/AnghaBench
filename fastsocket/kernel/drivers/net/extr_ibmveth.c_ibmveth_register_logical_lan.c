
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ibmveth_buf_desc {int desc; } ;
typedef int u64 ;
struct ibmveth_adapter {TYPE_1__* vdev; int filter_list_dma; int buffer_list_dma; } ;
struct TYPE_2__ {int unit_address; } ;


 int H_BUSY ;
 scalar_t__ H_IS_LONG_BUSY (int) ;
 int H_SUCCESS ;
 int h_free_logical_lan (int ) ;
 int h_register_logical_lan (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ibmveth_register_logical_lan(struct ibmveth_adapter *adapter,
        union ibmveth_buf_desc rxq_desc, u64 mac_address)
{
 int rc, try_again = 1;






retry:
 rc = h_register_logical_lan(adapter->vdev->unit_address,
        adapter->buffer_list_dma, rxq_desc.desc,
        adapter->filter_list_dma, mac_address);

 if (rc != H_SUCCESS && try_again) {
  do {
   rc = h_free_logical_lan(adapter->vdev->unit_address);
  } while (H_IS_LONG_BUSY(rc) || (rc == H_BUSY));

  try_again = 0;
  goto retry;
 }

 return rc;
}
