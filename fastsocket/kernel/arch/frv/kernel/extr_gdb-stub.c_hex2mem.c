
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u32 ;


 int gdbstub_write_byte (int*,int) ;
 int gdbstub_write_dword (int*,int ) ;
 int gdbstub_write_word (int*,int ) ;
 int hex (int ) ;

__attribute__((used)) static char *hex2mem(const char *buf, void *_mem, int count)
{
 uint8_t *mem = _mem;
 union {
  uint32_t l;
  uint16_t w;
  uint8_t b[4];
 } ch;

 if ((u32)mem&1 && count>=1) {
  ch.b[0] = hex(*buf++) << 4;
  ch.b[0] |= hex(*buf++);
  if (!gdbstub_write_byte(mem,ch.b[0]))
   return ((void*)0);
  mem++;
  count--;
 }

 if ((u32)mem&3 && count>=2) {
  ch.b[0] = hex(*buf++) << 4;
  ch.b[0] |= hex(*buf++);
  ch.b[1] = hex(*buf++) << 4;
  ch.b[1] |= hex(*buf++);
  if (!gdbstub_write_word(mem,ch.w))
   return ((void*)0);
  mem += 2;
  count -= 2;
 }

 while (count>=4) {
  ch.b[0] = hex(*buf++) << 4;
  ch.b[0] |= hex(*buf++);
  ch.b[1] = hex(*buf++) << 4;
  ch.b[1] |= hex(*buf++);
  ch.b[2] = hex(*buf++) << 4;
  ch.b[2] |= hex(*buf++);
  ch.b[3] = hex(*buf++) << 4;
  ch.b[3] |= hex(*buf++);
  if (!gdbstub_write_dword(mem,ch.l))
   return ((void*)0);
  mem += 4;
  count -= 4;
 }

 if (count>=2) {
  ch.b[0] = hex(*buf++) << 4;
  ch.b[0] |= hex(*buf++);
  ch.b[1] = hex(*buf++) << 4;
  ch.b[1] |= hex(*buf++);
  if (!gdbstub_write_word(mem,ch.w))
   return ((void*)0);
  mem += 2;
  count -= 2;
 }

 if (count>=1) {
  ch.b[0] = hex(*buf++) << 4;
  ch.b[0] |= hex(*buf++);
  if (!gdbstub_write_byte(mem,ch.b[0]))
   return ((void*)0);
 }

 return (char *) buf;
}
