
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DST_CA_DEBUG ;
 int dprintk (int ,int ,int,char*,int) ;
 int verbose ;

__attribute__((used)) static u32 asn_1_decode(u8 *asn_1_array)
{
 u8 length_field = 0, word_count = 0, count = 0;
 u32 length = 0;

 length_field = asn_1_array[0];
 dprintk(verbose, DST_CA_DEBUG, 1, " Length field=[%02x]", length_field);
 if (length_field < 0x80) {
  length = length_field & 0x7f;
  dprintk(verbose, DST_CA_DEBUG, 1, " Length=[%02x]\n", length);
 } else {
  word_count = length_field & 0x7f;
  for (count = 0; count < word_count; count++) {
   length = length << 8;
   length += asn_1_array[count + 1];
   dprintk(verbose, DST_CA_DEBUG, 1, " Length=[%04x]", length);
  }
 }
 return length;
}
