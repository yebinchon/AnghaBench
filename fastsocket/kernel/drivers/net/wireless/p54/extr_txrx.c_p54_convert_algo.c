
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int P54_CRYPTO_AESCCMP ;
 int P54_CRYPTO_TKIPMICHAEL ;
 int P54_CRYPTO_WEP ;





__attribute__((used)) static u8 p54_convert_algo(u32 cipher)
{
 switch (cipher) {
 case 128:
 case 129:
  return P54_CRYPTO_WEP;
 case 130:
  return P54_CRYPTO_TKIPMICHAEL;
 case 131:
  return P54_CRYPTO_AESCCMP;
 default:
  return 0;
 }
}
