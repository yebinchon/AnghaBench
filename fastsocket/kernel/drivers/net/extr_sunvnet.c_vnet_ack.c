
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct vio_dring_state* drings; } ;
struct vnet_port {struct vnet* vp; TYPE_2__ vio; } ;
struct vnet {struct net_device* dev; } ;
struct vio_dring_state {int cons; } ;
struct TYPE_3__ {scalar_t__ stype_env; } ;
struct vio_dring_data {int end_idx; TYPE_1__ tag; } ;
struct net_device {int dummy; } ;


 scalar_t__ VIO_DRING_DATA ;
 size_t VIO_DRIVER_TX_RING ;
 scalar_t__ VNET_TX_WAKEUP_THRESH (struct vio_dring_state*) ;
 int idx_is_pending (struct vio_dring_state*,int ) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int next_idx (int ,struct vio_dring_state*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vnet_tx_dring_avail (struct vio_dring_state*) ;

__attribute__((used)) static int vnet_ack(struct vnet_port *port, void *msgbuf)
{
 struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_TX_RING];
 struct vio_dring_data *pkt = msgbuf;
 struct net_device *dev;
 struct vnet *vp;
 u32 end;

 if (unlikely(pkt->tag.stype_env != VIO_DRING_DATA))
  return 0;

 end = pkt->end_idx;
 if (unlikely(!idx_is_pending(dr, end)))
  return 0;

 dr->cons = next_idx(end, dr);

 vp = port->vp;
 dev = vp->dev;
 if (unlikely(netif_queue_stopped(dev) &&
       vnet_tx_dring_avail(dr) >= VNET_TX_WAKEUP_THRESH(dr)))
  return 1;

 return 0;
}
