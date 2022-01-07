
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {struct vio_dring_state* drings; } ;
struct vio_dring_state {int snd_nxt; int rcv_nxt; } ;


 size_t VIO_DRIVER_RX_RING ;
 size_t VIO_DRIVER_TX_RING ;

__attribute__((used)) static void vnet_handshake_complete(struct vio_driver_state *vio)
{
 struct vio_dring_state *dr;

 dr = &vio->drings[VIO_DRIVER_RX_RING];
 dr->snd_nxt = dr->rcv_nxt = 1;

 dr = &vio->drings[VIO_DRIVER_TX_RING];
 dr->snd_nxt = dr->rcv_nxt = 1;
}
