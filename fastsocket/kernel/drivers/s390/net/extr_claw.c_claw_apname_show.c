
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct claw_privbk {struct claw_env* p_env; } ;
struct claw_env {char* api_type; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct claw_privbk* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t
claw_apname_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct claw_privbk *priv;
 struct claw_env * p_env;

 priv = dev_get_drvdata(dev);
 if (!priv)
  return -ENODEV;
 p_env = priv->p_env;
 return sprintf(buf, "%s\n",
         p_env->api_type);
}
