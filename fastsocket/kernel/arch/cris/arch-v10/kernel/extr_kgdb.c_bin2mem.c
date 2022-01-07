
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char*
bin2mem (unsigned char *mem, unsigned char *buf, int count)
{
 int i;
 unsigned char *next;
 for (i = 0; i < count; i++) {


  if (*buf == 0x7d) {
   next = buf + 1;
   if (*next == 0x3 || *next == 0x4 || *next == 0x5D)
    {
     buf++;
     *buf += 0x20;
    }
  }
  *mem++ = *buf++;
 }
 return (mem);
}
