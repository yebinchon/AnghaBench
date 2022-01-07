
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned short do_csum(const unsigned char *buff, int len)
{
 register unsigned long sum = 0;
 int swappem = 0;

 if (1 & (unsigned long)buff) {
  sum = *buff << 8;
  buff++;
  len--;
  ++swappem;
 }

 while (len > 1) {
  sum += *(unsigned short *)buff;
  buff += 2;
  len -= 2;
 }

 if (len > 0)
  sum += *buff;


 while (sum >> 16)
  sum = (sum & 0xffff) + (sum >> 16);

 if (swappem)
  sum = ((sum & 0xff00) >> 8) + ((sum & 0x00ff) << 8);

 return sum;

}
