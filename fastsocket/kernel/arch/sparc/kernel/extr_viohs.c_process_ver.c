
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stype; } ;
struct vio_ver_info {TYPE_1__ tag; } ;
struct vio_driver_state {int dummy; } ;





 int handshake_failure (struct vio_driver_state*) ;
 int process_ver_ack (struct vio_driver_state*,struct vio_ver_info*) ;
 int process_ver_info (struct vio_driver_state*,struct vio_ver_info*) ;
 int process_ver_nack (struct vio_driver_state*,struct vio_ver_info*) ;

__attribute__((used)) static int process_ver(struct vio_driver_state *vio, struct vio_ver_info *pkt)
{
 switch (pkt->tag.stype) {
 case 129:
  return process_ver_info(vio, pkt);

 case 130:
  return process_ver_ack(vio, pkt);

 case 128:
  return process_ver_nack(vio, pkt);

 default:
  return handshake_failure(vio);
 };
}
