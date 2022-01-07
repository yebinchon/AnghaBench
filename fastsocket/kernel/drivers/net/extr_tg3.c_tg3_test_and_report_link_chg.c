
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int link_up; int phy_flags; int dev; } ;


 int TG3_PHYFLG_MII_SERDES ;
 int TG3_PHYFLG_PARALLEL_DETECT ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int tg3_link_report (struct tg3*) ;

__attribute__((used)) static bool tg3_test_and_report_link_chg(struct tg3 *tp, bool curr_link_up)
{
 if (curr_link_up != tp->link_up) {
  if (curr_link_up) {
   netif_carrier_on(tp->dev);
  } else {
   netif_carrier_off(tp->dev);
   if (tp->phy_flags & TG3_PHYFLG_MII_SERDES)
    tp->phy_flags &= ~TG3_PHYFLG_PARALLEL_DETECT;
  }

  tg3_link_report(tp);
  return 1;
 }

 return 0;
}
