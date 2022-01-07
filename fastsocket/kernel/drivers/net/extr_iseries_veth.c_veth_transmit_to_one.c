
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct veth_port {int dev; } ;
struct TYPE_2__ {scalar_t__* len; int eofmask; int * addr; } ;
struct veth_msg {int in_use; TYPE_1__ data; int token; int dev; int skb; } ;
struct veth_lpar_connection {int state; scalar_t__ outstanding_tx; int lock; scalar_t__ last_contact; scalar_t__ reset_timeout; int reset_timer; } ;
struct sk_buff {scalar_t__ len; int data; } ;
struct net_device {int dummy; } ;
typedef size_t HvLpIndex ;
typedef scalar_t__ HvLpEvent_Rc ;


 int DMA_TO_DEVICE ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ HvLpEvent_Rc_Good ;
 int VETH_EOF_SHIFT ;
 int VETH_EVENT_FRAMES ;
 scalar_t__ VETH_MAX_MTU ;
 int VETH_STATE_READY ;
 int dma_map_single (int ,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct veth_port* netdev_priv (struct net_device*) ;
 int skb_get (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct veth_lpar_connection** veth_cnx ;
 int veth_recycle_msg (struct veth_lpar_connection*,struct veth_msg*) ;
 scalar_t__ veth_signaldata (struct veth_lpar_connection*,int ,int ,TYPE_1__*) ;
 scalar_t__ veth_stack_is_empty (struct veth_lpar_connection*) ;
 struct veth_msg* veth_stack_pop (struct veth_lpar_connection*) ;
 int veth_stop_queues (struct veth_lpar_connection*) ;

__attribute__((used)) static int veth_transmit_to_one(struct sk_buff *skb, HvLpIndex rlp,
    struct net_device *dev)
{
 struct veth_lpar_connection *cnx = veth_cnx[rlp];
 struct veth_port *port = netdev_priv(dev);
 HvLpEvent_Rc rc;
 struct veth_msg *msg = ((void*)0);
 unsigned long flags;

 if (! cnx)
  return 0;

 spin_lock_irqsave(&cnx->lock, flags);

 if (! (cnx->state & VETH_STATE_READY))
  goto no_error;

 if ((skb->len - ETH_HLEN) > VETH_MAX_MTU)
  goto drop;

 msg = veth_stack_pop(cnx);
 if (! msg)
  goto drop;

 msg->in_use = 1;
 msg->skb = skb_get(skb);

 msg->data.addr[0] = dma_map_single(port->dev, skb->data,
    skb->len, DMA_TO_DEVICE);

 if (dma_mapping_error(port->dev, msg->data.addr[0]))
  goto recycle_and_drop;

 msg->dev = port->dev;
 msg->data.len[0] = skb->len;
 msg->data.eofmask = 1 << VETH_EOF_SHIFT;

 rc = veth_signaldata(cnx, VETH_EVENT_FRAMES, msg->token, &msg->data);

 if (rc != HvLpEvent_Rc_Good)
  goto recycle_and_drop;


 if (0 == cnx->outstanding_tx)
  mod_timer(&cnx->reset_timer, jiffies + cnx->reset_timeout);

 cnx->last_contact = jiffies;
 cnx->outstanding_tx++;

 if (veth_stack_is_empty(cnx))
  veth_stop_queues(cnx);

 no_error:
 spin_unlock_irqrestore(&cnx->lock, flags);
 return 0;

 recycle_and_drop:
 veth_recycle_msg(cnx, msg);
 drop:
 spin_unlock_irqrestore(&cnx->lock, flags);
 return 1;
}
