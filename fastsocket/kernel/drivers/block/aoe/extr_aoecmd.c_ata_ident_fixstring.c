
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void
ata_ident_fixstring(u16 *id, int ns)
{
 u16 s;

 while (ns-- > 0) {
  s = *id;
  *id++ = s >> 8 | s << 8;
 }
}
