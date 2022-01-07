
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int num_channels; int features; scalar_t__ reg; } ;
struct device {int dummy; } ;


 int TALITOS_FTR_HW_AUTH_CHECK ;
 scalar_t__ TALITOS_IMR ;
 int TALITOS_IMR_INIT ;
 scalar_t__ TALITOS_IMR_LO ;
 int TALITOS_IMR_LO_INIT ;
 scalar_t__ TALITOS_MDEUICR_LO ;
 int TALITOS_MDEUICR_LO_ICE ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int reset_channel (struct device*,int) ;
 int reset_device (struct device*) ;
 int setbits32 (scalar_t__,int ) ;

__attribute__((used)) static int init_device(struct device *dev)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 int ch, err;







 err = reset_device(dev);
 if (err)
  return err;

 err = reset_device(dev);
 if (err)
  return err;


 for (ch = 0; ch < priv->num_channels; ch++) {
  err = reset_channel(dev, ch);
  if (err)
   return err;
 }


 setbits32(priv->reg + TALITOS_IMR, TALITOS_IMR_INIT);
 setbits32(priv->reg + TALITOS_IMR_LO, TALITOS_IMR_LO_INIT);


 if (priv->features & TALITOS_FTR_HW_AUTH_CHECK)
  setbits32(priv->reg + TALITOS_MDEUICR_LO,
            TALITOS_MDEUICR_LO_ICE);

 return 0;
}
