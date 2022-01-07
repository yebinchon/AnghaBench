
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_rdx {int dummy; } ;
struct vio_driver_state {int dummy; } ;


 int HS ;
 int handshake_failure (struct vio_driver_state*) ;
 int viodbg (int ,char*) ;

__attribute__((used)) static int process_rdx_nack(struct vio_driver_state *vio, struct vio_rdx *pkt)
{
 viodbg(HS, "GOT RDX NACK\n");

 return handshake_failure(vio);
}
