
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int aes_ks_subword (int) ;
 int be32_to_cpu (int) ;
 int cpu_to_be32 (int) ;
 int panic (char*) ;
 int* round_constant ;

__attribute__((used)) static void get_aes_decrypt_key(unsigned char *dec_key, const unsigned char *key, unsigned int keylength)
{
 u32 temp;
 u32 w_ring[8];
 u8 w_last_ix;
 int i;
 u8 nr, nk;

 switch (keylength){
 case 128:
  nk = 4;
  nr = 10;
  break;
 case 192:
  nk = 6;
  nr = 12;
  break;
 case 256:
  nk = 8;
  nr = 14;
  break;
 default:
  panic("stream co-processor: bad aes key length in get_aes_decrypt_key\n");
 };



 for (i = 0; i < nk; i+=1) {
  w_ring[i] = be32_to_cpu(*(u32*)&key[4*i]);
 }

 i = (int)nk;
 w_last_ix = i - 1;
 while (i < (4 * (nr + 2))) {
  temp = w_ring[w_last_ix];
  if (!(i % nk)) {

   temp = (temp << 8) | (temp >> 24);
   temp = aes_ks_subword(temp);
   temp ^= round_constant[i/nk - 1];
  } else if ((nk > 6) && ((i % nk) == 4)) {
   temp = aes_ks_subword(temp);
  }
  w_last_ix = (w_last_ix + 1) % nk;
  temp ^= w_ring[w_last_ix];
  w_ring[w_last_ix] = temp;






  if (i >= (4 * nr)) {


   *(u32*)dec_key = cpu_to_be32(temp);
   dec_key += 4;
  }
  ++i;
 }
}
