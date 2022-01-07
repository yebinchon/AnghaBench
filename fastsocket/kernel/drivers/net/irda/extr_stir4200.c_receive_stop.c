
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ in_frame; } ;
struct stir_cb {TYPE_3__* netdev; TYPE_1__ rx_buff; int rx_urb; scalar_t__ receiving; } ;
struct TYPE_5__ {int collisions; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void receive_stop(struct stir_cb *stir)
{
 stir->receiving = 0;
 usb_kill_urb(stir->rx_urb);

 if (stir->rx_buff.in_frame)
  stir->netdev->stats.collisions++;
}
