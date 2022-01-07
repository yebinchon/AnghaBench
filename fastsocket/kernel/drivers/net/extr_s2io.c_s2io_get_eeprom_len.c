
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int XENA_EEPROM_SPACE ;

__attribute__((used)) static int s2io_get_eeprom_len(struct net_device *dev)
{
 return XENA_EEPROM_SPACE;
}
