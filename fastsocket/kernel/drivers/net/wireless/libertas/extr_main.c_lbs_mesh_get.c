
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int mesh_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;


 int snprintf (char*,int,char*,int) ;
 TYPE_1__* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t lbs_mesh_get(struct device *dev,
  struct device_attribute *attr, char * buf)
{
 struct lbs_private *priv = to_net_dev(dev)->ml_priv;
 return snprintf(buf, 5, "0x%X\n", !!priv->mesh_dev);
}
