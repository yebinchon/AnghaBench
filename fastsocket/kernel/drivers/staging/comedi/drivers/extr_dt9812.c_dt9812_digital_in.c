
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot_dt9812 {int mutex; scalar_t__ usb; } ;


 int ENODEV ;
 int F020_SFR_P1 ;
 int F020_SFR_P3 ;
 int down (int *) ;
 int dt9812_read_multiple_registers (scalar_t__,int,int*,int*) ;
 int up (int *) ;

__attribute__((used)) static int dt9812_digital_in(struct slot_dt9812 *slot, u8 * bits)
{
 int result = -ENODEV;

 down(&slot->mutex);
 if (slot->usb) {
  u8 reg[2] = { F020_SFR_P3, F020_SFR_P1 };
  u8 value[2];

  result = dt9812_read_multiple_registers(slot->usb, 2, reg,
       value);
  if (result == 0) {





   *bits = (value[0] & 0x7f) | ((value[1] & 0x08) << 4);


  }
 }
 up(&slot->mutex);

 return result;
}
