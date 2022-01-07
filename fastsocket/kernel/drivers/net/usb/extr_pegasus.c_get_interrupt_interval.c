
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_10__ {int intr_interval; TYPE_2__* intf; TYPE_1__* usb; } ;
typedef TYPE_3__ pegasus_t ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {scalar_t__ speed; } ;


 scalar_t__ USB_SPEED_HIGH ;
 int dev_info (int *,char*,int,int) ;
 scalar_t__ netif_msg_timer (TYPE_3__*) ;
 int read_eprom_word (TYPE_3__*,int,int*) ;
 int write_eprom_word (TYPE_3__*,int,int) ;

__attribute__((used)) static inline void get_interrupt_interval(pegasus_t * pegasus)
{
 u16 data;
 u8 interval;

 read_eprom_word(pegasus, 4, &data);
 interval = data >> 8;
 if (pegasus->usb->speed != USB_SPEED_HIGH) {
  if (interval < 0x80) {
   if (netif_msg_timer(pegasus))
    dev_info(&pegasus->intf->dev, "intr interval "
     "changed from %ums to %ums\n",
     interval, 0x80);
   interval = 0x80;
   data = (data & 0x00FF) | ((u16)interval << 8);



  }
 }
 pegasus->intr_interval = interval;
}
