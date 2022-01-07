
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sh_flctl {int dummy; } ;
struct mtd_info {int dummy; } ;


 int BUG () ;
 int CE0_ENABLE ;
 int FLCMNCR (struct sh_flctl*) ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void flctl_select_chip(struct mtd_info *mtd, int chipnr)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 uint32_t flcmncr_val = readl(FLCMNCR(flctl));

 switch (chipnr) {
 case -1:
  flcmncr_val &= ~CE0_ENABLE;
  writel(flcmncr_val, FLCMNCR(flctl));
  break;
 case 0:
  flcmncr_val |= CE0_ENABLE;
  writel(flcmncr_val, FLCMNCR(flctl));
  break;
 default:
  BUG();
 }
}
