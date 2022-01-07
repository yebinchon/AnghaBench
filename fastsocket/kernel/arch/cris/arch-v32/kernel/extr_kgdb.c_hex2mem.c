
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char hex (int ) ;

__attribute__((used)) static unsigned char*
hex2mem(unsigned char *mem, char *buf, int count)
{
 int i;
 unsigned char ch;
 for (i = 0; i < count; i++) {
  ch = hex (*buf++) << 4;
  ch = ch + hex (*buf++);
  *mem++ = ch;
 }
 return mem;
}
