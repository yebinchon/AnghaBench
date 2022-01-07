
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int XPCS_CONTROL1 ;
 int XPCS_CONTROL1_RESET ;
 int nr64_xpcs (int ) ;
 int nw64_xpcs (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void niu_xpcs_reset(struct niu *np)
{
 int limit = 1000;
 u64 val = nr64_xpcs(XPCS_CONTROL1);
 val |= XPCS_CONTROL1_RESET;
 nw64_xpcs(XPCS_CONTROL1, val);
 while ((--limit >= 0) && (val & XPCS_CONTROL1_RESET)) {
  udelay(100);
  val = nr64_xpcs(XPCS_CONTROL1);
 }
}
