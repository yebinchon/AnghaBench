
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long priv; int data_read; int data_present; int init; int name; } ;
struct talitos_private {TYPE_1__ rng; } ;
struct device {int dummy; } ;


 int dev_driver_string (struct device*) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int hwrng_register (TYPE_1__*) ;
 int talitos_rng_data_present ;
 int talitos_rng_data_read ;
 int talitos_rng_init ;

__attribute__((used)) static int talitos_register_rng(struct device *dev)
{
 struct talitos_private *priv = dev_get_drvdata(dev);

 priv->rng.name = dev_driver_string(dev),
 priv->rng.init = talitos_rng_init,
 priv->rng.data_present = talitos_rng_data_present,
 priv->rng.data_read = talitos_rng_data_read,
 priv->rng.priv = (unsigned long)dev;

 return hwrng_register(&priv->rng);
}
