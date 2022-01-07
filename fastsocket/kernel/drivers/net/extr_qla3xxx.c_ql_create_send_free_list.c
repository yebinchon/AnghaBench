
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_tx_buf_cb {int * oal; struct ob_mac_iocb_req* queue_entry; int * skb; } ;
struct ql3_adapter {struct ql_tx_buf_cb* tx_buf; struct ob_mac_iocb_req* req_q_virt_addr; } ;
struct ob_mac_iocb_req {int dummy; } ;


 int GFP_KERNEL ;
 int NUM_REQ_Q_ENTRIES ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int ql_create_send_free_list(struct ql3_adapter *qdev)
{
 struct ql_tx_buf_cb *tx_cb;
 int i;
 struct ob_mac_iocb_req *req_q_curr =
     qdev->req_q_virt_addr;


 for (i = 0; i < NUM_REQ_Q_ENTRIES; i++) {

  tx_cb = &qdev->tx_buf[i];
  tx_cb->skb = ((void*)0);
  tx_cb->queue_entry = req_q_curr;
  req_q_curr++;
  tx_cb->oal = kmalloc(512, GFP_KERNEL);
  if (tx_cb->oal == ((void*)0))
   return -1;
 }
 return 0;
}
