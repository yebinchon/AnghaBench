
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ibmveth_buf_desc {int desc; } ;
struct ibmveth_adapter {int netdev; TYPE_1__* vdev; } ;
struct TYPE_2__ {int unit_address; } ;


 unsigned long H_BUSY ;
 unsigned long H_DROPPED ;
 unsigned long H_SUCCESS ;
 unsigned long h_send_logical_lan (int ,int ,int ,int ,int ,int ,int ,unsigned long,unsigned long*) ;
 int netdev_err (int ,char*,unsigned long) ;

__attribute__((used)) static int ibmveth_send(struct ibmveth_adapter *adapter,
   union ibmveth_buf_desc *descs)
{
 unsigned long correlator;
 unsigned int retry_count;
 unsigned long ret;





 retry_count = 1024;
 correlator = 0;
 do {
  ret = h_send_logical_lan(adapter->vdev->unit_address,
          descs[0].desc, descs[1].desc,
          descs[2].desc, descs[3].desc,
          descs[4].desc, descs[5].desc,
          correlator, &correlator);
 } while ((ret == H_BUSY) && (retry_count--));

 if (ret != H_SUCCESS && ret != H_DROPPED) {
  netdev_err(adapter->netdev, "tx: h_send_logical_lan failed "
      "with rc=%ld\n", ret);
  return 1;
 }

 return 0;
}
