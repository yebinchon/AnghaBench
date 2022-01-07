
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BUG_ON (int) ;
 unsigned long ENI2C0 ;
 unsigned long ENI2C1 ;
 unsigned long ENSPI ;
 unsigned long GPIOG0TO1 ;
 unsigned long GPIOG2TO3 ;
 int REG_MFSEL ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 char* dev_name (struct device*) ;
 int mfp_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

void mfp_set_groupg(struct device *dev)
{
 unsigned long mfpen;
 const char *dev_id;

 BUG_ON(!dev);

 mutex_lock(&mfp_mutex);

 dev_id = dev_name(dev);

 mfpen = __raw_readl(REG_MFSEL);

 if (strcmp(dev_id, "nuc900-spi") == 0) {
  mfpen &= ~(GPIOG0TO1 | GPIOG2TO3);
  mfpen |= ENSPI;
 } else if (strcmp(dev_id, "nuc900-i2c0") == 0) {
  mfpen &= ~(GPIOG0TO1);
  mfpen |= ENI2C0;
 } else if (strcmp(dev_id, "nuc900-i2c1") == 0) {
  mfpen &= ~(GPIOG2TO3);
  mfpen |= ENI2C1;
 } else {
  mfpen &= ~(GPIOG0TO1 | GPIOG2TO3);
 }

 __raw_writel(mfpen, REG_MFSEL);

 mutex_unlock(&mfp_mutex);
}
