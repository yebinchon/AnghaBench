
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_bitfield {int name; int mask; } ;


 int pr_cont (char*,int) ;

void
nouveau_bitfield_print(const struct nouveau_bitfield *bf, u32 value)
{
 while (bf->name) {
  if (value & bf->mask) {
   pr_cont(" %s", bf->name);
   value &= ~bf->mask;
  }

  bf++;
 }

 if (value)
  pr_cont(" (unknown bits 0x%08x)", value);
}
