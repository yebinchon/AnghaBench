
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lynx {int dummy; } ;


 int SERIAL_EEPROM_CONTROL ;
 int reg_read (struct ti_lynx*,int ) ;

__attribute__((used)) static int bit_getscl(void *data)
{
 return reg_read((struct ti_lynx *) data, SERIAL_EEPROM_CONTROL) & 0x00000040;
}
