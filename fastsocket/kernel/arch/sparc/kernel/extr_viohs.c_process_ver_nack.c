
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_version {int minor; int major; } ;
struct vio_ver_info {scalar_t__ major; scalar_t__ minor; int dev_class; } ;
struct vio_driver_state {int dummy; } ;


 int HS ;
 struct vio_version* find_by_major (struct vio_driver_state*,scalar_t__) ;
 int handshake_failure (struct vio_driver_state*) ;
 scalar_t__ send_version (struct vio_driver_state*,int ,int ) ;
 int viodbg (int ,char*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int process_ver_nack(struct vio_driver_state *vio,
       struct vio_ver_info *pkt)
{
 struct vio_version *nver;

 viodbg(HS, "GOT VERSION NACK maj[%u] min[%u] devclass[%u]\n",
        pkt->major, pkt->minor, pkt->dev_class);

 if (pkt->major == 0 && pkt->minor == 0)
  return handshake_failure(vio);
 nver = find_by_major(vio, pkt->major);
 if (!nver)
  return handshake_failure(vio);

 if (send_version(vio, nver->major, nver->minor) < 0)
  return handshake_failure(vio);

 return 0;
}
