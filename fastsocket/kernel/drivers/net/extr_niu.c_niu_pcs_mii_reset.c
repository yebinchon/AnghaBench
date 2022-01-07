
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int PCS_MII_CTL ;
 int PCS_MII_CTL_RST ;
 int nr64_pcs (int ) ;
 int nw64_pcs (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void niu_pcs_mii_reset(struct niu *np)
{
 int limit = 1000;
 u64 val = nr64_pcs(PCS_MII_CTL);
 val |= PCS_MII_CTL_RST;
 nw64_pcs(PCS_MII_CTL, val);
 while ((--limit >= 0) && (val & PCS_MII_CTL_RST)) {
  udelay(100);
  val = nr64_pcs(PCS_MII_CTL);
 }
}
