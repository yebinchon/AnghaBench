
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dring_state {scalar_t__ ident; } ;
struct vio_dring_data {scalar_t__ dring_ident; scalar_t__ start_idx; scalar_t__ end_idx; } ;
struct TYPE_2__ {struct vio_dring_state* drings; } ;
struct vdc_port {TYPE_1__ vio; } ;


 scalar_t__ VDC_TX_RING_SIZE ;
 size_t VIO_DRIVER_TX_RING ;
 scalar_t__ unlikely (int) ;
 int vdc_end_one (struct vdc_port*,struct vio_dring_state*,scalar_t__) ;

__attribute__((used)) static int vdc_ack(struct vdc_port *port, void *msgbuf)
{
 struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_TX_RING];
 struct vio_dring_data *pkt = msgbuf;

 if (unlikely(pkt->dring_ident != dr->ident ||
       pkt->start_idx != pkt->end_idx ||
       pkt->start_idx >= VDC_TX_RING_SIZE))
  return 0;

 vdc_end_one(port, dr, pkt->start_idx);

 return 0;
}
