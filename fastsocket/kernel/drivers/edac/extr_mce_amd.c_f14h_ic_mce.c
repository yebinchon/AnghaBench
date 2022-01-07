
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 int LL (int ) ;
 scalar_t__ MEM_ERROR (int ) ;
 scalar_t__ R4 (int ) ;
 scalar_t__ R4_IRD ;
 scalar_t__ R4_SNOOP ;
 scalar_t__ TT (int ) ;
 int pr_cont (char*) ;

__attribute__((used)) static bool f14h_ic_mce(u16 ec, u8 xec)
{
 u8 r4 = R4(ec);
 bool ret = 1;

 if (MEM_ERROR(ec)) {
  if (TT(ec) != 0 || LL(ec) != 1)
   ret = 0;

  if (r4 == R4_IRD)
   pr_cont("Data/tag array parity error for a tag hit.\n");
  else if (r4 == R4_SNOOP)
   pr_cont("Tag error during snoop/victimization.\n");
  else
   ret = 0;
 }
 return ret;
}
