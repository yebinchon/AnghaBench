
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slot_dt9812 {int mutex; TYPE_1__* usb; } ;
struct TYPE_2__ {int digital_out_shadow; } ;


 int ENODEV ;
 int F020_SFR_P2 ;
 int down (int *) ;
 int dt9812_write_multiple_registers (TYPE_1__*,int,int *,int *) ;
 int up (int *) ;

__attribute__((used)) static int dt9812_digital_out(struct slot_dt9812 *slot, u8 bits)
{
 int result = -ENODEV;

 down(&slot->mutex);
 if (slot->usb) {
  u8 reg[1];
  u8 value[1];

  reg[0] = F020_SFR_P2;
  value[0] = bits;
  result = dt9812_write_multiple_registers(slot->usb, 1, reg,
        value);
  slot->usb->digital_out_shadow = bits;
 }
 up(&slot->mutex);
 return result;
}
