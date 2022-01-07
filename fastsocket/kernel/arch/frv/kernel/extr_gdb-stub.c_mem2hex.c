
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int gdbstub_read_byte (int const*,int *) ;
 int gdbstub_read_dword (int const*,int*) ;
 int gdbstub_read_word (int const*,int *) ;
 char* pack_hex_byte (char*,int ) ;

__attribute__((used)) static unsigned char *mem2hex(const void *_mem, char *buf, int count, int may_fault)
{
 const uint8_t *mem = _mem;
 uint8_t ch[4] __attribute__((aligned(4)));

 if ((uint32_t)mem&1 && count>=1) {
  if (!gdbstub_read_byte(mem,ch))
   return ((void*)0);
  buf = pack_hex_byte(buf, ch[0]);
  mem++;
  count--;
 }

 if ((uint32_t)mem&3 && count>=2) {
  if (!gdbstub_read_word(mem,(uint16_t *)ch))
   return ((void*)0);
  buf = pack_hex_byte(buf, ch[0]);
  buf = pack_hex_byte(buf, ch[1]);
  mem += 2;
  count -= 2;
 }

 while (count>=4) {
  if (!gdbstub_read_dword(mem,(uint32_t *)ch))
   return ((void*)0);
  buf = pack_hex_byte(buf, ch[0]);
  buf = pack_hex_byte(buf, ch[1]);
  buf = pack_hex_byte(buf, ch[2]);
  buf = pack_hex_byte(buf, ch[3]);
  mem += 4;
  count -= 4;
 }

 if (count>=2) {
  if (!gdbstub_read_word(mem,(uint16_t *)ch))
   return ((void*)0);
  buf = pack_hex_byte(buf, ch[0]);
  buf = pack_hex_byte(buf, ch[1]);
  mem += 2;
  count -= 2;
 }

 if (count>=1) {
  if (!gdbstub_read_byte(mem,ch))
   return ((void*)0);
  buf = pack_hex_byte(buf, ch[0]);
 }

 *buf = 0;

 return buf;
}
