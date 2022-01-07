
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sam9_rtc {int dummy; } ;
struct device {int dummy; } ;


 int AT91_RTT_ALMIEN ;
 int AT91_RTT_RTTINCIEN ;
 int ENOIOCTLCMD ;
 int MR ;




 int dev_dbg (struct device*,char*,unsigned int,unsigned long,int) ;
 struct sam9_rtc* dev_get_drvdata (struct device*) ;
 int rtt_readl (struct sam9_rtc*,int ) ;
 int rtt_writel (struct sam9_rtc*,int ,int) ;

__attribute__((used)) static int at91_rtc_ioctl(struct device *dev, unsigned int cmd,
   unsigned long arg)
{
 struct sam9_rtc *rtc = dev_get_drvdata(dev);
 int ret = 0;
 u32 mr = rtt_readl(rtc, MR);

 dev_dbg(dev, "ioctl: cmd=%08x, arg=%08lx, mr %08x\n", cmd, arg, mr);

 switch (cmd) {
 case 131:
  rtt_writel(rtc, MR, mr & ~AT91_RTT_ALMIEN);
  break;
 case 130:
  rtt_writel(rtc, MR, mr | AT91_RTT_ALMIEN);
  break;
 case 129:
  rtt_writel(rtc, MR, mr & ~AT91_RTT_RTTINCIEN);
  break;
 case 128:
  rtt_writel(rtc, MR, mr | AT91_RTT_RTTINCIEN);
  break;
 default:
  ret = -ENOIOCTLCMD;
  break;
 }

 return ret;
}
