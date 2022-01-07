
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int features; scalar_t__ reg; } ;
struct device {int dummy; } ;


 int EIO ;
 scalar_t__ TALITOS_CCCR (int) ;
 scalar_t__ TALITOS_CCCR_LO (int) ;
 int TALITOS_CCCR_LO_CDIE ;
 int TALITOS_CCCR_LO_CDWE ;
 int TALITOS_CCCR_LO_EAE ;
 int TALITOS_CCCR_LO_IWSE ;
 int TALITOS_CCCR_RESET ;
 int TALITOS_FTR_HW_AUTH_CHECK ;
 unsigned int TALITOS_TIMEOUT ;
 int cpu_relax () ;
 int dev_err (struct device*,char*,int) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int in_be32 (scalar_t__) ;
 int setbits32 (scalar_t__,int) ;

__attribute__((used)) static int reset_channel(struct device *dev, int ch)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 unsigned int timeout = TALITOS_TIMEOUT;

 setbits32(priv->reg + TALITOS_CCCR(ch), TALITOS_CCCR_RESET);

 while ((in_be32(priv->reg + TALITOS_CCCR(ch)) & TALITOS_CCCR_RESET)
        && --timeout)
  cpu_relax();

 if (timeout == 0) {
  dev_err(dev, "failed to reset channel %d\n", ch);
  return -EIO;
 }


 setbits32(priv->reg + TALITOS_CCCR_LO(ch), TALITOS_CCCR_LO_EAE |
    TALITOS_CCCR_LO_CDWE | TALITOS_CCCR_LO_CDIE);


 if (priv->features & TALITOS_FTR_HW_AUTH_CHECK)
  setbits32(priv->reg + TALITOS_CCCR_LO(ch),
            TALITOS_CCCR_LO_IWSE);

 return 0;
}
