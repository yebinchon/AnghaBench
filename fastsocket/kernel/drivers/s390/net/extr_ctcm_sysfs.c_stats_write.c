
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctcm_priv {TYPE_1__** channel; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int prof; } ;


 size_t ENODEV ;
 size_t WRITE ;
 struct ctcm_priv* dev_get_drvdata (struct device*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static ssize_t stats_write(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct ctcm_priv *priv = dev_get_drvdata(dev);
 if (!priv)
  return -ENODEV;

 memset(&priv->channel[WRITE]->prof, 0,
    sizeof(priv->channel[WRITE]->prof));
 return count;
}
