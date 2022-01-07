
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int in_frame; } ;
struct stir_cb {int receiving; TYPE_2__* rx_urb; TYPE_1__ rx_buff; } ;
struct TYPE_4__ {scalar_t__ status; } ;


 int FALSE ;
 int GFP_KERNEL ;
 int OUTSIDE_FRAME ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int receive_start(struct stir_cb *stir)
{

 stir->receiving = 1;

 stir->rx_buff.in_frame = FALSE;
 stir->rx_buff.state = OUTSIDE_FRAME;

 stir->rx_urb->status = 0;
 return usb_submit_urb(stir->rx_urb, GFP_KERNEL);
}
