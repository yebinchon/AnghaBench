
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BUG_ON (int) ;
 unsigned long ENKPI ;
 unsigned long ENNAND ;
 unsigned long GPSELC ;
 int REG_MFSEL ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 char* dev_name (struct device*) ;
 int mfp_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

void mfp_set_groupc(struct device *dev)
{
 unsigned long mfpen;
 const char *dev_id;

 BUG_ON(!dev);

 mutex_lock(&mfp_mutex);

 dev_id = dev_name(dev);

 mfpen = __raw_readl(REG_MFSEL);

 if (strcmp(dev_id, "nuc900-lcd") == 0)
  mfpen |= GPSELC;
 else if (strcmp(dev_id, "nuc900-kpi") == 0) {
  mfpen &= (~GPSELC);
  mfpen |= ENKPI;
 } else if (strcmp(dev_id, "nuc900-nand") == 0) {
  mfpen &= (~GPSELC);
  mfpen |= ENNAND;
 } else
  mfpen &= (~GPSELC);

 __raw_writel(mfpen, REG_MFSEL);

 mutex_unlock(&mfp_mutex);
}
