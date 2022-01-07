
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int num_channels; scalar_t__ reg; } ;
struct device {int dummy; } ;


 scalar_t__ TALITOS_IMR ;
 int TALITOS_IMR_INIT ;
 scalar_t__ TALITOS_IMR_LO ;
 int TALITOS_IMR_LO_INIT ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int flush_channel (struct device*,int,int ,int ) ;
 int setbits32 (scalar_t__,int ) ;

__attribute__((used)) static void talitos_done(unsigned long data)
{
 struct device *dev = (struct device *)data;
 struct talitos_private *priv = dev_get_drvdata(dev);
 int ch;

 for (ch = 0; ch < priv->num_channels; ch++)
  flush_channel(dev, ch, 0, 0);




 setbits32(priv->reg + TALITOS_IMR, TALITOS_IMR_INIT);
 setbits32(priv->reg + TALITOS_IMR_LO, TALITOS_IMR_LO_INIT);
}
