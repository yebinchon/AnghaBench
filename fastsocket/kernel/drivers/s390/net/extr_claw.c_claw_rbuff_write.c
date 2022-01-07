
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct claw_privbk {struct claw_env* p_env; } ;
struct claw_env {int read_buffers; scalar_t__ packing; } ;
typedef size_t ssize_t ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int) ;
 size_t EINVAL ;
 size_t ENODEV ;
 struct claw_privbk* dev_get_drvdata (struct device*) ;
 int setup ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t
claw_rbuff_write(struct device *dev, struct device_attribute *attr,
 const char *buf, size_t count)
{
 struct claw_privbk *priv;
 struct claw_env *p_env;
 int nnn,max;

 priv = dev_get_drvdata(dev);
 if (!priv)
  return -ENODEV;
 p_env = priv->p_env;
 sscanf(buf, "%i", &nnn);
 if (p_env->packing) {
  max = 64;
 }
 else {
  max = 512;
 }
 if ((nnn > max ) || (nnn < 2))
  return -EINVAL;
 p_env->read_buffers = nnn;
 CLAW_DBF_TEXT(2, setup, "Rbufset");
 CLAW_DBF_TEXT_(2, setup, "RB=%d", p_env->read_buffers);
 return count;
}
