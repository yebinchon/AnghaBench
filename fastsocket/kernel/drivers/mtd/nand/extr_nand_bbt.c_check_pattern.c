
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_bbt_descr {int offs; int options; int len; int* pattern; } ;


 int NAND_BBT_SCANEMPTY ;

__attribute__((used)) static int check_pattern(uint8_t *buf, int len, int paglen, struct nand_bbt_descr *td)
{
 int i, end = 0;
 uint8_t *p = buf;

 end = paglen + td->offs;
 if (td->options & NAND_BBT_SCANEMPTY) {
  for (i = 0; i < end; i++) {
   if (p[i] != 0xff)
    return -1;
  }
 }
 p += end;


 for (i = 0; i < td->len; i++) {
  if (p[i] != td->pattern[i])
   return -1;
 }

 if (td->options & NAND_BBT_SCANEMPTY) {
  p += td->len;
  end += td->len;
  for (i = end; i < len; i++) {
   if (*p++ != 0xff)
    return -1;
  }
 }
 return 0;
}
