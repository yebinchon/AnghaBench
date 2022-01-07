
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t xTargetLp; int xSubtype; } ;
struct veth_lpevent {TYPE_1__ base_event; } ;
struct veth_lpar_connection {int dummy; } ;
typedef size_t HvLpIndex ;


 int BUG_ON (int) ;


 struct veth_lpar_connection** veth_cnx ;
 int veth_error (char*,int,size_t) ;
 int veth_take_cap_ack (struct veth_lpar_connection*,struct veth_lpevent*) ;
 int veth_take_monitor_ack (struct veth_lpar_connection*,struct veth_lpevent*) ;

__attribute__((used)) static void veth_handle_ack(struct veth_lpevent *event)
{
 HvLpIndex rlp = event->base_event.xTargetLp;
 struct veth_lpar_connection *cnx = veth_cnx[rlp];

 BUG_ON(! cnx);

 switch (event->base_event.xSubtype) {
 case 129:
  veth_take_cap_ack(cnx, event);
  break;
 case 128:
  veth_take_monitor_ack(cnx, event);
  break;
 default:
  veth_error("Unknown ack type %d from LPAR %d.\n",
    event->base_event.xSubtype, rlp);
 };
}
