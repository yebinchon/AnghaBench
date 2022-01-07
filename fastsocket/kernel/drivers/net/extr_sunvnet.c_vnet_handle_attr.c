
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stype; } ;
struct vio_net_attr_info {TYPE_1__ tag; } ;
struct vio_driver_state {int dummy; } ;


 int ECONNRESET ;



 int handle_attr_ack (struct vio_driver_state*,struct vio_net_attr_info*) ;
 int handle_attr_info (struct vio_driver_state*,struct vio_net_attr_info*) ;
 int handle_attr_nack (struct vio_driver_state*,struct vio_net_attr_info*) ;

__attribute__((used)) static int vnet_handle_attr(struct vio_driver_state *vio, void *arg)
{
 struct vio_net_attr_info *pkt = arg;

 switch (pkt->tag.stype) {
 case 129:
  return handle_attr_info(vio, pkt);

 case 130:
  return handle_attr_ack(vio, pkt);

 case 128:
  return handle_attr_nack(vio, pkt);

 default:
  return -ECONNRESET;
 }
}
