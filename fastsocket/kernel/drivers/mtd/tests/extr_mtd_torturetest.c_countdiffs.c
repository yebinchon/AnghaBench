
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int countdiffs(unsigned char *buf, unsigned char *check_buf,
        unsigned offset, unsigned len, unsigned *bytesp,
        unsigned *bitsp)
{
 unsigned i, bit;
 int first = -1;

 for (i = offset; i < offset + len; i++)
  if (buf[i] != check_buf[i]) {
   first = i;
   break;
  }

 while (i < offset + len) {
  if (buf[i] != check_buf[i]) {
   (*bytesp)++;
   bit = 1;
   while (bit < 256) {
    if ((buf[i] & bit) != (check_buf[i] & bit))
     (*bitsp)++;
    bit <<= 1;
   }
  }
  i++;
 }

 return first;
}
