
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lynx {int i2c_driven_state; } ;


 int SERIAL_EEPROM_CONTROL ;
 int reg_write (struct ti_lynx*,int ,int) ;

__attribute__((used)) static void bit_setscl(void *data, int state)
{
 if (state) {
    ((struct ti_lynx *) data)->i2c_driven_state |= 0x00000040;
 } else {
    ((struct ti_lynx *) data)->i2c_driven_state &= ~0x00000040;
 }
 reg_write((struct ti_lynx *) data, SERIAL_EEPROM_CONTROL, ((struct ti_lynx *) data)->i2c_driven_state);
}
