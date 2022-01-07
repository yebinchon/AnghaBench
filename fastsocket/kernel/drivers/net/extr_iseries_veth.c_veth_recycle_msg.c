
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * len; int * addr; } ;
struct veth_msg {int token; TYPE_1__ data; int * skb; int dev; scalar_t__ in_use; } ;
struct veth_lpar_connection {int state; int remote_lp; } ;


 int DMA_TO_DEVICE ;
 int VETH_STATE_OPEN ;
 int dev_kfree_skb_any (int *) ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int veth_error (char*,int ,int ) ;
 int veth_stack_push (struct veth_lpar_connection*,struct veth_msg*) ;

__attribute__((used)) static void veth_recycle_msg(struct veth_lpar_connection *cnx,
        struct veth_msg *msg)
{
 u32 dma_address, dma_length;

 if (msg->in_use) {
  msg->in_use = 0;
  dma_address = msg->data.addr[0];
  dma_length = msg->data.len[0];

  if (!dma_mapping_error(msg->dev, dma_address))
   dma_unmap_single(msg->dev, dma_address, dma_length,
     DMA_TO_DEVICE);

  if (msg->skb) {
   dev_kfree_skb_any(msg->skb);
   msg->skb = ((void*)0);
  }

  memset(&msg->data, 0, sizeof(msg->data));
  veth_stack_push(cnx, msg);
 } else if (cnx->state & VETH_STATE_OPEN) {
  veth_error("Non-pending frame (# %d) acked by LPAR %d.\n",
    cnx->remote_lp, msg->token);
 }
}
