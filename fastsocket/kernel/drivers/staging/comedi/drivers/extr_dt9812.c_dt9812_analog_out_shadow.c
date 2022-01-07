
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct slot_dt9812 {int mutex; TYPE_1__* usb; } ;
struct TYPE_2__ {int * analog_out_shadow; } ;


 int ENODEV ;
 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static int dt9812_analog_out_shadow(struct slot_dt9812 *slot, int channel,
        u16 * value)
{
 int result = -ENODEV;

 down(&slot->mutex);
 if (slot->usb) {
  *value = slot->usb->analog_out_shadow[channel];
  result = 0;
 }
 up(&slot->mutex);

 return result;
}
