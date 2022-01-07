
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {scalar_t__ desc_buf_len; int * desc_buf; int dr_state; struct vio_dring_state* drings; } ;
struct vio_dring_unregister {scalar_t__ dring_ident; } ;
struct vio_dring_state {scalar_t__ ident; } ;


 int HS ;
 size_t VIO_DRIVER_RX_RING ;
 int VIO_DR_STATE_RXREG ;
 int kfree (int *) ;
 int memset (struct vio_dring_state*,int ,int) ;
 int viodbg (int ,char*) ;

__attribute__((used)) static int process_dunreg(struct vio_driver_state *vio,
     struct vio_dring_unregister *pkt)
{
 struct vio_dring_state *dr = &vio->drings[VIO_DRIVER_RX_RING];

 viodbg(HS, "GOT DRING_UNREG\n");

 if (pkt->dring_ident != dr->ident)
  return 0;

 vio->dr_state &= ~VIO_DR_STATE_RXREG;

 memset(dr, 0, sizeof(*dr));

 kfree(vio->desc_buf);
 vio->desc_buf = ((void*)0);
 vio->desc_buf_len = 0;

 return 0;
}
