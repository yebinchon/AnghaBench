
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rx_ring {int lbq_buf_size; } ;
struct ql_adapter {int rss_ring_count; TYPE_1__* ndev; int flags; struct rx_ring* rx_ring; int lbq_buf_order; } ;
struct TYPE_4__ {int mtu; } ;


 int ETIMEDOUT ;
 int LARGE_BUFFER_MAX_SIZE ;
 int LARGE_BUFFER_MIN_SIZE ;
 int QL_ADAPTER_UP ;
 int dev_close (TYPE_1__*) ;
 int get_order (int ) ;
 int ifup ;
 int netif_alert (struct ql_adapter*,int ,TYPE_1__*,char*) ;
 int netif_err (struct ql_adapter*,int ,TYPE_1__*,char*) ;
 int ql_adapter_down (struct ql_adapter*) ;
 int ql_adapter_up (struct ql_adapter*) ;
 int set_bit (int ,int *) ;
 int ssleep (int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ql_change_rx_buffers(struct ql_adapter *qdev)
{
 struct rx_ring *rx_ring;
 int i, status;
 u32 lbq_buf_len;


 if (!test_bit(QL_ADAPTER_UP, &qdev->flags)) {
  int i = 3;
  while (i-- && !test_bit(QL_ADAPTER_UP, &qdev->flags)) {
   netif_err(qdev, ifup, qdev->ndev,
      "Waiting for adapter UP...\n");
   ssleep(1);
  }

  if (!i) {
   netif_err(qdev, ifup, qdev->ndev,
      "Timed out waiting for adapter UP\n");
   return -ETIMEDOUT;
  }
 }

 status = ql_adapter_down(qdev);
 if (status)
  goto error;


 lbq_buf_len = (qdev->ndev->mtu > 1500) ?
  LARGE_BUFFER_MAX_SIZE : LARGE_BUFFER_MIN_SIZE;
 qdev->lbq_buf_order = get_order(lbq_buf_len);

 for (i = 0; i < qdev->rss_ring_count; i++) {
  rx_ring = &qdev->rx_ring[i];

  rx_ring->lbq_buf_size = lbq_buf_len;
 }

 status = ql_adapter_up(qdev);
 if (status)
  goto error;

 return status;
error:
 netif_alert(qdev, ifup, qdev->ndev,
      "Driver up/down cycle failed, closing device.\n");
 set_bit(QL_ADAPTER_UP, &qdev->flags);
 dev_close(qdev->ndev);
 return status;
}
