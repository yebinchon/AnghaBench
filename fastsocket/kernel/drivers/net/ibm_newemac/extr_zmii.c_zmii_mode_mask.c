
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





 int ZMII_FER_MII (int) ;
 int ZMII_FER_RMII (int) ;
 int ZMII_FER_SMII (int) ;

__attribute__((used)) static inline u32 zmii_mode_mask(int mode, int input)
{
 switch (mode) {
 case 130:
  return ZMII_FER_MII(input);
 case 129:
  return ZMII_FER_RMII(input);
 case 128:
  return ZMII_FER_SMII(input);
 default:
  return 0;
 }
}
