
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ gdbstub_read_byte (int const*,int *) ;
 scalar_t__ gdbstub_read_dword (int const*,int *) ;
 scalar_t__ gdbstub_read_word (int const*,int *) ;
 char* pack_hex_byte (char*,int ) ;

__attribute__((used)) static
unsigned char *mem2hex(const void *_mem, char *buf, int count, int may_fault)
{
 const u8 *mem = _mem;
 u8 ch[4];

 if ((u32) mem & 1 && count >= 1) {
  if (gdbstub_read_byte(mem, ch) != 0)
   return 0;
  buf = pack_hex_byte(buf, ch[0]);
  mem++;
  count--;
 }

 if ((u32) mem & 3 && count >= 2) {
  if (gdbstub_read_word(mem, ch) != 0)
   return 0;
  buf = pack_hex_byte(buf, ch[0]);
  buf = pack_hex_byte(buf, ch[1]);
  mem += 2;
  count -= 2;
 }

 while (count >= 4) {
  if (gdbstub_read_dword(mem, ch) != 0)
   return 0;
  buf = pack_hex_byte(buf, ch[0]);
  buf = pack_hex_byte(buf, ch[1]);
  buf = pack_hex_byte(buf, ch[2]);
  buf = pack_hex_byte(buf, ch[3]);
  mem += 4;
  count -= 4;
 }

 if (count >= 2) {
  if (gdbstub_read_word(mem, ch) != 0)
   return 0;
  buf = pack_hex_byte(buf, ch[0]);
  buf = pack_hex_byte(buf, ch[1]);
  mem += 2;
  count -= 2;
 }

 if (count >= 1) {
  if (gdbstub_read_byte(mem, ch) != 0)
   return 0;
  buf = pack_hex_byte(buf, ch[0]);
 }

 *buf = 0;
 return buf;
}
