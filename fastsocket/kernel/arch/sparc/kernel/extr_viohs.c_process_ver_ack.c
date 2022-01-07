
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int stype; } ;
struct vio_ver_info {scalar_t__ major; scalar_t__ minor; TYPE_2__ tag; int dev_class; } ;
struct TYPE_3__ {scalar_t__ major; scalar_t__ minor; } ;
struct vio_driver_state {int hs_state; int dev_class; TYPE_1__ ver; } ;


 int HS ;


 int VIO_HS_GOTVERS ;
 int VIO_SUBTYPE_NACK ;
 int handshake_failure (struct vio_driver_state*) ;
 int send_attr (struct vio_driver_state*) ;
 int send_ctrl (struct vio_driver_state*,TYPE_2__*,int) ;
 int viodbg (int ,char*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int process_ver_ack(struct vio_driver_state *vio,
      struct vio_ver_info *pkt)
{
 viodbg(HS, "GOT VERSION ACK maj[%u] min[%u] devclass[%u]\n",
        pkt->major, pkt->minor, pkt->dev_class);

 if (vio->hs_state & VIO_HS_GOTVERS) {
  if (vio->ver.major != pkt->major ||
      vio->ver.minor != pkt->minor) {
   pkt->tag.stype = VIO_SUBTYPE_NACK;
   (void) send_ctrl(vio, &pkt->tag, sizeof(*pkt));
   return handshake_failure(vio);
  }
 } else {
  vio->ver.major = pkt->major;
  vio->ver.minor = pkt->minor;
  vio->hs_state = VIO_HS_GOTVERS;
 }

 switch (vio->dev_class) {
 case 128:
 case 129:
  if (send_attr(vio) < 0)
   return handshake_failure(vio);
  break;

 default:
  break;
 }

 return 0;
}
