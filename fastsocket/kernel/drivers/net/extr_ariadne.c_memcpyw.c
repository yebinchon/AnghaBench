
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;



__attribute__((used)) static void memcpyw(volatile u_short *dest, u_short *src, int len)
{
    while (len >= 2) {
 *(dest++) = *(src++);
 len -= 2;
    }
    if (len == 1)
 *dest = (*(u_char *)src)<<8;
}
