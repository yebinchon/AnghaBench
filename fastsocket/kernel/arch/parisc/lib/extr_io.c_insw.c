
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cpu_to_le16 (int ) ;
 int inw (unsigned long) ;

void insw (unsigned long port, void *dst, unsigned long count)
{
 unsigned int l = 0, l2;
 unsigned char *p;

 p = (unsigned char *)dst;

 if (!count)
  return;

 switch (((unsigned long)p) & 0x3)
 {
  case 0x00:
  while (count>=2) {

   count -= 2;
   l = cpu_to_le16(inw(port)) << 16;
   l |= cpu_to_le16(inw(port));
   *(unsigned int *)p = l;
   p += 4;
  }
  if (count) {
   *(unsigned short *)p = cpu_to_le16(inw(port));
  }
  break;

  case 0x02:
  *(unsigned short *)p = cpu_to_le16(inw(port));
  p += 2;
  count--;
  while (count>=2) {

   count -= 2;
   l = cpu_to_le16(inw(port)) << 16;
   l |= cpu_to_le16(inw(port));
   *(unsigned int *)p = l;
   p += 4;
  }
  if (count) {
   *(unsigned short *)p = cpu_to_le16(inw(port));
  }
  break;

  case 0x01:
  case 0x03:


  --count;

  l = cpu_to_le16(inw(port));
  *p = l >> 8;
  p++;
  while (count--)
  {
   l2 = cpu_to_le16(inw(port));
   *(unsigned short *)p = (l & 0xff) << 8 | (l2 >> 8);
   p += 2;
   l = l2;
  }
  *p = l & 0xff;
  break;
 }
}
