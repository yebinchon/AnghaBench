
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int cpu_to_le32 (unsigned int) ;

void crypto4xx_memcpy_le(unsigned int *dst,
    const unsigned char *buf,
    int len)
{
 u8 *tmp;
 for (; len >= 4; buf += 4, len -= 4)
  *dst++ = cpu_to_le32(*(unsigned int *) buf);

 tmp = (u8 *)dst;
 switch (len) {
 case 3:
  *tmp++ = 0;
  *tmp++ = *(buf+2);
  *tmp++ = *(buf+1);
  *tmp++ = *buf;
  break;
 case 2:
  *tmp++ = 0;
  *tmp++ = 0;
  *tmp++ = *(buf+1);
  *tmp++ = *buf;
  break;
 case 1:
  *tmp++ = 0;
  *tmp++ = 0;
  *tmp++ = 0;
  *tmp++ = *buf;
  break;
 default:
  break;
 }
}
