
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lp; struct vio_dring_state* drings; } ;
struct vnet_port {TYPE_2__* tx_bufs; TYPE_1__ vio; } ;
struct vio_dring_state {int entry_size; int num_entries; scalar_t__ ncookies; scalar_t__ pending; int * base; int cookies; } ;
struct TYPE_4__ {int * buf; int ncookies; int cookies; } ;


 size_t VIO_DRIVER_TX_RING ;
 int VNET_TX_RING_SIZE ;
 int kfree (void*) ;
 int ldc_free_exp_dring (int ,int *,int,int ,scalar_t__) ;
 int ldc_unmap (int ,int ,int ) ;

__attribute__((used)) static void vnet_port_free_tx_bufs(struct vnet_port *port)
{
 struct vio_dring_state *dr;
 int i;

 dr = &port->vio.drings[VIO_DRIVER_TX_RING];
 if (dr->base) {
  ldc_free_exp_dring(port->vio.lp, dr->base,
       (dr->entry_size * dr->num_entries),
       dr->cookies, dr->ncookies);
  dr->base = ((void*)0);
  dr->entry_size = 0;
  dr->num_entries = 0;
  dr->pending = 0;
  dr->ncookies = 0;
 }

 for (i = 0; i < VNET_TX_RING_SIZE; i++) {
  void *buf = port->tx_bufs[i].buf;

  if (!buf)
   continue;

  ldc_unmap(port->vio.lp,
     port->tx_bufs[i].cookies,
     port->tx_bufs[i].ncookies);

  kfree(buf);
  port->tx_bufs[i].buf = ((void*)0);
 }
}
