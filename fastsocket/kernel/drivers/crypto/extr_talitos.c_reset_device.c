
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {scalar_t__ reg; } ;
struct device {int dummy; } ;


 int EIO ;
 scalar_t__ TALITOS_MCR ;
 int TALITOS_MCR_SWR ;
 unsigned int TALITOS_TIMEOUT ;
 int cpu_relax () ;
 int dev_err (struct device*,char*) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int in_be32 (scalar_t__) ;
 int setbits32 (scalar_t__,int) ;

__attribute__((used)) static int reset_device(struct device *dev)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 unsigned int timeout = TALITOS_TIMEOUT;

 setbits32(priv->reg + TALITOS_MCR, TALITOS_MCR_SWR);

 while ((in_be32(priv->reg + TALITOS_MCR) & TALITOS_MCR_SWR)
        && --timeout)
  cpu_relax();

 if (timeout == 0) {
  dev_err(dev, "failed to reset device\n");
  return -EIO;
 }

 return 0;
}
