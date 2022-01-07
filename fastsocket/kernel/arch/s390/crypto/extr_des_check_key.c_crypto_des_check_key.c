
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 int CRYPTO_TFM_REQ_WEAK_KEY ;
 int CRYPTO_TFM_RES_WEAK_KEY ;
 int EINVAL ;
 int* parity ;

int
crypto_des_check_key(const u8 *key, unsigned int keylen, u32 *flags)
{
 u32 n, w;

 n = parity[key[0]]; n <<= 4;
 n |= parity[key[1]]; n <<= 4;
 n |= parity[key[2]]; n <<= 4;
 n |= parity[key[3]]; n <<= 4;
 n |= parity[key[4]]; n <<= 4;
 n |= parity[key[5]]; n <<= 4;
 n |= parity[key[6]]; n <<= 4;
 n |= parity[key[7]];
 w = 0x88888888L;

 if ((*flags & CRYPTO_TFM_REQ_WEAK_KEY)
     && !((n - (w >> 3)) & w)) {
  if (n < 0x41415151) {
   if (n < 0x31312121) {
    if (n < 0x14141515) {

     if (n == 0x11111111) goto weak;

     if (n == 0x13131212) goto weak;
    } else {

     if (n == 0x14141515) goto weak;

     if (n == 0x16161616) goto weak;
    }
   } else {
    if (n < 0x34342525) {

     if (n == 0x31312121) goto weak;

     if (n == 0x33332222) goto weak;
    } else {

     if (n == 0x34342525) goto weak;

     if (n == 0x36362626) goto weak;
    }
   }
  } else {
   if (n < 0x61616161) {
    if (n < 0x44445555) {

     if (n == 0x41415151) goto weak;

     if (n == 0x43435252) goto weak;
    } else {

     if (n == 0x44445555) goto weak;

     if (n == 0x46465656) goto weak;
    }
   } else {
    if (n < 0x64646565) {

     if (n == 0x61616161) goto weak;

     if (n == 0x63636262) goto weak;
    } else {

     if (n == 0x64646565) goto weak;

     if (n == 0x66666666) goto weak;
    }
   }
  }
 }
 return 0;
weak:
 *flags |= CRYPTO_TFM_RES_WEAK_KEY;
 return -EINVAL;
}
