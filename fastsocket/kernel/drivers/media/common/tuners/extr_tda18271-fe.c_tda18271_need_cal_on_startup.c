
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_config {scalar_t__ rf_cal_on_startup; } ;


 int tda18271_cal_on_startup ;

__attribute__((used)) static inline int tda18271_need_cal_on_startup(struct tda18271_config *cfg)
{

 return ((tda18271_cal_on_startup == -1) ?

  ((cfg) && (cfg->rf_cal_on_startup)) :

  (tda18271_cal_on_startup)) ? 1 : 0;
}
