
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int RF3020 ;
 int RF3021 ;
 int RF3022 ;
 int RT2872 ;
 int rt2x00_is_soc (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00_warn (struct rt2x00_dev*,char*) ;

__attribute__((used)) static inline bool rt2800_is_305x_soc(struct rt2x00_dev *rt2x00dev)
{

 if (!rt2x00_is_soc(rt2x00dev) ||
     !rt2x00_rt(rt2x00dev, RT2872))
  return 0;


 if (rt2x00_rf(rt2x00dev, RF3020) ||
     rt2x00_rf(rt2x00dev, RF3021) ||
     rt2x00_rf(rt2x00dev, RF3022))
  return 1;

 rt2x00_warn(rt2x00dev, "Unknown RF chipset on rt305x\n");
 return 0;
}
