
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vio_driver_state {int dummy; } ;
struct vnet_port {struct vio_driver_state vio; } ;
struct TYPE_3__ {scalar_t__ state; int ack; } ;
struct vio_net_desc {TYPE_1__ hdr; int ncookies; TYPE_2__* cookies; int size; } ;
struct vio_dring_state {int dummy; } ;
struct TYPE_4__ {int cookie_size; int cookie_addr; } ;


 int DATA ;
 int ECONNRESET ;
 scalar_t__ IS_ERR (struct vio_net_desc*) ;
 int PTR_ERR (struct vio_net_desc*) ;
 scalar_t__ VIO_DESC_DONE ;
 scalar_t__ VIO_DESC_READY ;
 struct vio_net_desc* get_rx_desc (struct vnet_port*,struct vio_dring_state*,int ) ;
 int put_rx_desc (struct vnet_port*,struct vio_dring_state*,struct vio_net_desc*,int ) ;
 int viodbg (int ,char*,scalar_t__,int,int ,int ,int ,int ) ;
 int vnet_rx_one (struct vnet_port*,int ,TYPE_2__*,int ) ;

__attribute__((used)) static int vnet_walk_rx_one(struct vnet_port *port,
       struct vio_dring_state *dr,
       u32 index, int *needs_ack)
{
 struct vio_net_desc *desc = get_rx_desc(port, dr, index);
 struct vio_driver_state *vio = &port->vio;
 int err;

 if (IS_ERR(desc))
  return PTR_ERR(desc);

 viodbg(DATA, "vio_walk_rx_one desc[%02x:%02x:%08x:%08x:%llx:%llx]\n",
        desc->hdr.state, desc->hdr.ack,
        desc->size, desc->ncookies,
        desc->cookies[0].cookie_addr,
        desc->cookies[0].cookie_size);

 if (desc->hdr.state != VIO_DESC_READY)
  return 1;
 err = vnet_rx_one(port, desc->size, desc->cookies, desc->ncookies);
 if (err == -ECONNRESET)
  return err;
 desc->hdr.state = VIO_DESC_DONE;
 err = put_rx_desc(port, dr, desc, index);
 if (err < 0)
  return err;
 *needs_ack = desc->hdr.ack;
 return 0;
}
