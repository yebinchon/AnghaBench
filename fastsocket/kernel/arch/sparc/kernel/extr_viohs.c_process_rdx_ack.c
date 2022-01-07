
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_rdx {int dummy; } ;
struct vio_driver_state {int hs_state; } ;


 int HS ;
 int VIO_HS_GOT_RDX_ACK ;
 int VIO_HS_SENT_RDX ;
 int handshake_failure (struct vio_driver_state*) ;
 int viodbg (int ,char*) ;

__attribute__((used)) static int process_rdx_ack(struct vio_driver_state *vio, struct vio_rdx *pkt)
{
 viodbg(HS, "GOT RDX ACK\n");

 if (!(vio->hs_state & VIO_HS_SENT_RDX))
  return handshake_failure(vio);

 vio->hs_state |= VIO_HS_GOT_RDX_ACK;
 return 0;
}
