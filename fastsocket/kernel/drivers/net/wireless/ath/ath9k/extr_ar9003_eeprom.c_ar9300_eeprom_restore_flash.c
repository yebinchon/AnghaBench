
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;


 int ath9k_hw_nvram_read (struct ath_hw*,int,int *) ;

__attribute__((used)) static int ar9300_eeprom_restore_flash(struct ath_hw *ah, u8 *mptr,
           int mdata_size)
{
 u16 *data = (u16 *) mptr;
 int i;

 for (i = 0; i < mdata_size / 2; i++, data++)
  ath9k_hw_nvram_read(ah, i, data);

 return 0;
}
