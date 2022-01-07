
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned short twd_i387_to_fxsr(unsigned short twd)
{
 unsigned int tmp;


 tmp = ~twd;
 tmp = (tmp | (tmp>>1)) & 0x5555;

 tmp = (tmp | (tmp >> 1)) & 0x3333;
 tmp = (tmp | (tmp >> 2)) & 0x0f0f;
 tmp = (tmp | (tmp >> 4)) & 0x00ff;
 return tmp;
}
