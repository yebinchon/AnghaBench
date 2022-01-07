
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BUG_ON (int) ;
 unsigned long GPSELEI0 ;
 unsigned long GPSELEI1 ;
 int REG_MFSEL ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 char* dev_name (struct device*) ;
 int mfp_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

void mfp_set_groupi(struct device *dev)
{
 unsigned long mfpen;
 const char *dev_id;

 BUG_ON(!dev);

 mutex_lock(&mfp_mutex);

 dev_id = dev_name(dev);

 mfpen = __raw_readl(REG_MFSEL);

 mfpen &= ~GPSELEI1;

 if (strcmp(dev_id, "nuc900-wdog") == 0)
  mfpen |= GPSELEI1;
 else if (strcmp(dev_id, "nuc900-atapi") == 0)
  mfpen |= GPSELEI0;
 else if (strcmp(dev_id, "nuc900-keypad") == 0)
  mfpen &= ~GPSELEI0;

 __raw_writel(mfpen, REG_MFSEL);

 mutex_unlock(&mfp_mutex);
}
