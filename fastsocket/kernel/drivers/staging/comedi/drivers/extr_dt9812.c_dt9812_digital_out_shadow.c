
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slot_dt9812 {int mutex; TYPE_1__* usb; } ;
struct TYPE_2__ {int digital_out_shadow; } ;


 int ENODEV ;
 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static int dt9812_digital_out_shadow(struct slot_dt9812 *slot, u8 * bits)
{
 int result = -ENODEV;

 down(&slot->mutex);
 if (slot->usb) {
  *bits = slot->usb->digital_out_shadow;
  result = 0;
 }
 up(&slot->mutex);
 return result;
}
