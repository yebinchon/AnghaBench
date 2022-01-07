
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_tx_desc {int num_sge; struct ib_sge* tx_sg; int type; } ;
struct iser_device {TYPE_1__* mr; int ib_device; } ;
struct iser_conn {int login_req_dma; int login_req_buf; struct iser_device* device; } ;
struct iscsi_task {TYPE_2__* hdr; int data_count; int data; struct iscsi_iser_task* dd_data; } ;
struct iscsi_iser_task {struct iser_tx_desc desc; } ;
struct iscsi_iser_conn {struct iser_conn* ib_conn; } ;
struct iscsi_conn {struct iscsi_task* login_task; struct iscsi_iser_conn* dd_data; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct TYPE_4__ {int dlength; } ;
struct TYPE_3__ {int lkey; } ;


 int DMA_TO_DEVICE ;
 int ISCSI_TX_CONTROL ;
 int ib_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int iser_create_send_desc (struct iser_conn*,struct iser_tx_desc*) ;
 int iser_err (char*,...) ;
 int iser_post_recvl (struct iser_conn*) ;
 int iser_post_rx_bufs (struct iscsi_conn*,TYPE_2__*) ;
 int iser_post_send (struct iser_conn*,struct iser_tx_desc*) ;
 int memcpy (int ,int ,int ) ;
 unsigned long ntoh24 (int ) ;

int iser_send_control(struct iscsi_conn *conn,
        struct iscsi_task *task)
{
 struct iscsi_iser_conn *iser_conn = conn->dd_data;
 struct iscsi_iser_task *iser_task = task->dd_data;
 struct iser_tx_desc *mdesc = &iser_task->desc;
 unsigned long data_seg_len;
 int err = 0;
 struct iser_device *device;
 struct iser_conn *ib_conn = iser_conn->ib_conn;


 mdesc->type = ISCSI_TX_CONTROL;
 iser_create_send_desc(iser_conn->ib_conn, mdesc);

 device = iser_conn->ib_conn->device;

 data_seg_len = ntoh24(task->hdr->dlength);

 if (data_seg_len > 0) {
  struct ib_sge *tx_dsg = &mdesc->tx_sg[1];
  if (task != conn->login_task) {
   iser_err("data present on non login task!!!\n");
   goto send_control_error;
  }

  ib_dma_sync_single_for_cpu(device->ib_device,
   ib_conn->login_req_dma, task->data_count,
   DMA_TO_DEVICE);

  memcpy(iser_conn->ib_conn->login_req_buf, task->data,
       task->data_count);

  ib_dma_sync_single_for_device(device->ib_device,
   ib_conn->login_req_dma, task->data_count,
   DMA_TO_DEVICE);

  tx_dsg->addr = iser_conn->ib_conn->login_req_dma;
  tx_dsg->length = task->data_count;
  tx_dsg->lkey = device->mr->lkey;
  mdesc->num_sge = 2;
 }

 if (task == conn->login_task) {
  err = iser_post_recvl(iser_conn->ib_conn);
  if (err)
   goto send_control_error;
  err = iser_post_rx_bufs(conn, task->hdr);
  if (err)
   goto send_control_error;
 }

 err = iser_post_send(iser_conn->ib_conn, mdesc);
 if (!err)
  return 0;

send_control_error:
 iser_err("conn %p failed err %d\n",conn, err);
 return err;
}
