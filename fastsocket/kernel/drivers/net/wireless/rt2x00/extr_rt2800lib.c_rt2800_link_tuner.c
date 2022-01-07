
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {int rssi; } ;


 int REV_RT2860C ;
 int RT2860 ;
 int RT5592 ;
 int rt2800_get_default_vgc (struct rt2x00_dev*) ;
 int rt2800_set_vgc (struct rt2x00_dev*,struct link_qual*,int) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_rt_rev (struct rt2x00_dev*,int ,int ) ;

void rt2800_link_tuner(struct rt2x00_dev *rt2x00dev, struct link_qual *qual,
         const u32 count)
{
 u8 vgc;

 if (rt2x00_rt_rev(rt2x00dev, RT2860, REV_RT2860C))
  return;





 vgc = rt2800_get_default_vgc(rt2x00dev);

 if (rt2x00_rt(rt2x00dev, RT5592) && qual->rssi > -65)
  vgc += 0x20;
 else if (qual->rssi > -80)
  vgc += 0x10;

 rt2800_set_vgc(rt2x00dev, qual, vgc);
}
