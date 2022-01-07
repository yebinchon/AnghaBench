
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long em28xx_hash_mem(char *buf, int length, int bits)
{
 unsigned long hash = 0;
 unsigned long l = 0;
 int len = 0;
 unsigned char c;
 do {
  if (len == length) {
   c = (char)len;
   len = -1;
  } else
   c = *buf++;
  l = (l << 8) | c;
  len++;
  if ((len & (32 / 8 - 1)) == 0)
   hash = ((hash^l) * 0x9e370001UL);
 } while (len);

 return (hash >> (32 - bits)) & 0xffffffffUL;
}
