
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_rdx {int tag; } ;
struct vio_driver_state {int dummy; } ;
typedef int pkt ;


 int HS ;
 int VIO_RDX ;
 int VIO_SUBTYPE_INFO ;
 int VIO_TYPE_CTRL ;
 int init_tag (int *,int ,int ,int ) ;
 int memset (struct vio_rdx*,int ,int) ;
 int send_ctrl (struct vio_driver_state*,int *,int) ;
 int viodbg (int ,char*) ;

__attribute__((used)) static int send_rdx(struct vio_driver_state *vio)
{
 struct vio_rdx pkt;

 memset(&pkt, 0, sizeof(pkt));

 init_tag(&pkt.tag, VIO_TYPE_CTRL, VIO_SUBTYPE_INFO, VIO_RDX);

 viodbg(HS, "SEND RDX INFO\n");

 return send_ctrl(vio, &pkt.tag, sizeof(pkt));
}
