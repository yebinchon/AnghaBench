
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct talitos_private {scalar_t__ reg; } ;
struct hwrng {scalar_t__ priv; } ;
struct device {int dummy; } ;


 scalar_t__ TALITOS_RNGU_FIFO ;
 scalar_t__ TALITOS_RNGU_FIFO_LO ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int in_be32 (scalar_t__) ;

__attribute__((used)) static int talitos_rng_data_read(struct hwrng *rng, u32 *data)
{
 struct device *dev = (struct device *)rng->priv;
 struct talitos_private *priv = dev_get_drvdata(dev);


 *data = in_be32(priv->reg + TALITOS_RNGU_FIFO);
 *data = in_be32(priv->reg + TALITOS_RNGU_FIFO_LO);

 return sizeof(u32);
}
