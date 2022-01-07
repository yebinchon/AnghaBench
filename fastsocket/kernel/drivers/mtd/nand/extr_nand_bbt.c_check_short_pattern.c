
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct nand_bbt_descr {int len; int offs; scalar_t__* pattern; } ;



__attribute__((used)) static int check_short_pattern(uint8_t *buf, struct nand_bbt_descr *td)
{
 int i;
 uint8_t *p = buf;


 for (i = 0; i < td->len; i++) {
  if (p[td->offs + i] != td->pattern[i])
   return -1;
 }
 return 0;
}
