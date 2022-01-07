
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ath_hw {TYPE_1__* eeprom_blob; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;



__attribute__((used)) static bool ath9k_hw_nvram_read_blob(struct ath_hw *ah, u32 off,
         u16 *data)
{
 u16 *blob_data;

 if (off * sizeof(u16) > ah->eeprom_blob->size)
  return 0;

 blob_data = (u16 *)ah->eeprom_blob->data;
 *data = blob_data[off];
 return 1;
}
