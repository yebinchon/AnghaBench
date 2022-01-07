
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {int autorecording; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct vmlogrdr_priv_t* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t vmlogrdr_autorecording_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct vmlogrdr_priv_t *priv = dev_get_drvdata(dev);
 return sprintf(buf, "%u\n", priv->autorecording);
}
