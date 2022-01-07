
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int EEPROM ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int,int,int,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static bool ar9300_uncompress_block(struct ath_hw *ah,
        u8 *mptr,
        int mdataSize,
        u8 *block,
        int size)
{
 int it;
 int spot;
 int offset;
 int length;
 struct ath_common *common = ath9k_hw_common(ah);

 spot = 0;

 for (it = 0; it < size; it += (length+2)) {
  offset = block[it];
  offset &= 0xff;
  spot += offset;
  length = block[it+1];
  length &= 0xff;

  if (length > 0 && spot >= 0 && spot+length <= mdataSize) {
   ath_dbg(common, EEPROM,
    "Restore at %d: spot=%d offset=%d length=%d\n",
    it, spot, offset, length);
   memcpy(&mptr[spot], &block[it+2], length);
   spot += length;
  } else if (length > 0) {
   ath_dbg(common, EEPROM,
    "Bad restore at %d: spot=%d offset=%d length=%d\n",
    it, spot, offset, length);
   return 0;
  }
 }
 return 1;
}
