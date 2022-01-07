
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;


 int CPLD_SPI ;
 int CPLD_SPI_CS_EEPROM ;

 int T_CS ;
 TYPE_1__ ssp_configuration ;
 int udelay (int ) ;

__attribute__((used)) static void disable_cs (void)
{
 switch (ssp_configuration.device) {
 case 128:
  CPLD_SPI &= ~CPLD_SPI_CS_EEPROM;
  break;
 }
 udelay (T_CS);
}
