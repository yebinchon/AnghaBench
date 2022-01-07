
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int periodic_freq; } ;
struct device {int dummy; } ;


 unsigned int ENOIOCTLCMD ;
 int PF_OXS ;




 struct sh_rtc* dev_get_drvdata (struct device*) ;
 int sh_rtc_setaie (struct device*,int) ;
 int sh_rtc_setcie (struct device*,int) ;

__attribute__((used)) static int sh_rtc_ioctl(struct device *dev, unsigned int cmd, unsigned long arg)
{
 struct sh_rtc *rtc = dev_get_drvdata(dev);
 unsigned int ret = 0;

 switch (cmd) {
 case 131:
 case 130:
  sh_rtc_setaie(dev, cmd == 130);
  break;
 case 129:
  rtc->periodic_freq &= ~PF_OXS;
  sh_rtc_setcie(dev, 0);
  break;
 case 128:
  rtc->periodic_freq |= PF_OXS;
  sh_rtc_setcie(dev, 1);
  break;
 default:
  ret = -ENOIOCTLCMD;
 }

 return ret;
}
