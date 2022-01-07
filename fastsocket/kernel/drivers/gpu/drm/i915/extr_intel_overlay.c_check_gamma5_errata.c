
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool check_gamma5_errata(u32 gamma5)
{
 int i;

 for (i = 0; i < 3; i++) {
  if (((gamma5 >> i*8) & 0xff) == 0x80)
   return 0;
 }

 return 1;
}
