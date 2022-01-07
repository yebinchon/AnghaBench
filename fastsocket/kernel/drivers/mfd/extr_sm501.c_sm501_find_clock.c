
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int rev; } ;
struct sm501_clock {int dummy; } ;
struct device {int dummy; } ;






 struct sm501_devdata* dev_get_drvdata (struct device*) ;
 int sm501_calc_pll (int,struct sm501_clock*,int) ;
 int sm501_select_clock (unsigned long,struct sm501_clock*,int) ;

unsigned long sm501_find_clock(struct device *dev,
          int clksrc,
          unsigned long req_freq)
{
 struct sm501_devdata *sm = dev_get_drvdata(dev);
 unsigned long sm501_freq;
 struct sm501_clock to;

 switch (clksrc) {
 case 129:
  if (sm->rev >= 0xC0) {

   sm501_freq = (sm501_calc_pll(2 * req_freq,
           &to, 5) / 2);
  } else {
   sm501_freq = (sm501_select_clock(2 * req_freq,
        &to, 5) / 2);
  }
  break;

 case 128:
  sm501_freq = (sm501_select_clock(2 * req_freq, &to, 3) / 2);
  break;

 case 130:
 case 131:
  sm501_freq = sm501_select_clock(req_freq, &to, 3);
  break;

 default:
  sm501_freq = 0;
 }

 return sm501_freq;
}
