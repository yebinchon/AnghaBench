
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;


 int ath9k_hw_nvram_read (struct ath_hw*,int,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ar9300_eeprom_read_byte(struct ath_hw *ah, int address,
        u8 *buffer)
{
 u16 val;

 if (unlikely(!ath9k_hw_nvram_read(ah, address / 2, &val)))
  return 0;

 *buffer = (val >> (8 * (address % 2))) & 0xff;
 return 1;
}
