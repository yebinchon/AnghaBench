
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int saa711x_odd_parity(u8 c)
{
 c ^= (c >> 4);
 c ^= (c >> 2);
 c ^= (c >> 1);

 return c & 1;
}
