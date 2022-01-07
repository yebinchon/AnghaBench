
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_char ;


 int mmc_out (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
mmc_write(u_long base,
   u_char o,
   u_char * b,
   int n)
{
  o += n;
  b += n;

  while(n-- > 0 )
    mmc_out(base, --o, *(--b));
}
