
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hifn_device {int name; } ;


 int HIFN_0_PUCTRL ;
 int HIFN_PUCTRL_RESET ;
 int dprintk (char*,int ) ;
 int hifn_read_0 (struct hifn_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void hifn_wait_puc(struct hifn_device *dev)
{
 int i;
 u32 ret;

 for (i=10000; i > 0; --i) {
  ret = hifn_read_0(dev, HIFN_0_PUCTRL);
  if (!(ret & HIFN_PUCTRL_RESET))
   break;

  udelay(1);
 }

 if (!i)
  dprintk("%s: Failed to reset PUC unit.\n", dev->name);
}
