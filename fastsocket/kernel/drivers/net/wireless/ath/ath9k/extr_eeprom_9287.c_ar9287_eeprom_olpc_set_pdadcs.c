
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int txPower ;
struct ath_hw {int dummy; } ;
typedef int int32_t ;


 int REG_READ (struct ath_hw*,int) ;
 int REG_WRITE (struct ath_hw*,int,int) ;

__attribute__((used)) static void ar9287_eeprom_olpc_set_pdadcs(struct ath_hw *ah,
       int32_t txPower, u16 chain)
{
 u32 tmpVal;
 u32 a;



 tmpVal = REG_READ(ah, 0xa270);
 tmpVal = tmpVal & 0xFCFFFFFF;
 tmpVal = tmpVal | (0x3 << 24);
 REG_WRITE(ah, 0xa270, tmpVal);



 tmpVal = REG_READ(ah, 0xb270);
 tmpVal = tmpVal & 0xFCFFFFFF;
 tmpVal = tmpVal | (0x3 << 24);
 REG_WRITE(ah, 0xb270, tmpVal);



 if (chain == 0) {
  tmpVal = REG_READ(ah, 0xa398);
  tmpVal = tmpVal & 0xff00ffff;
  a = (txPower)&0xff;
  tmpVal = tmpVal | (a << 16);
  REG_WRITE(ah, 0xa398, tmpVal);
 }



 if (chain == 1) {
  tmpVal = REG_READ(ah, 0xb398);
  tmpVal = tmpVal & 0xff00ffff;
  a = (txPower)&0xff;
  tmpVal = tmpVal | (a << 16);
  REG_WRITE(ah, 0xb398, tmpVal);
 }
}
