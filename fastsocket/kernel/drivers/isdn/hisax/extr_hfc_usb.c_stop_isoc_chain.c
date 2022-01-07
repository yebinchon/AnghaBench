
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ active; int * urb; TYPE_1__* iso; int fifonum; } ;
typedef TYPE_2__ usb_fifo ;
struct TYPE_4__ {int * purb; } ;


 int DBG (int ,char*,int ,int) ;
 int HFCUSB_DBG_INIT ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void
stop_isoc_chain(usb_fifo * fifo)
{
 int i;

 for (i = 0; i < 2; i++) {
  if (fifo->iso[i].purb) {
   DBG(HFCUSB_DBG_INIT,
       "HFC-S USB: Stopping iso chain for fifo %i.%i",
       fifo->fifonum, i);
   usb_kill_urb(fifo->iso[i].purb);
   usb_free_urb(fifo->iso[i].purb);
   fifo->iso[i].purb = ((void*)0);
  }
 }

 usb_kill_urb(fifo->urb);
 usb_free_urb(fifo->urb);
 fifo->urb = ((void*)0);
 fifo->active = 0;
}
