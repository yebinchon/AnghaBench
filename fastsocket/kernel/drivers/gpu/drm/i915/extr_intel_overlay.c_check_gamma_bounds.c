
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool check_gamma_bounds(u32 gamma1, u32 gamma2)
{
 int i;

 if (gamma1 & 0xff000000 || gamma2 & 0xff000000)
  return 0;

 for (i = 0; i < 3; i++) {
  if (((gamma1 >> i*8) & 0xff) >= ((gamma2 >> i*8) & 0xff))
   return 0;
 }

 return 1;
}
