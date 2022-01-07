
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct claw_privbk {struct claw_env* p_env; } ;
struct claw_env {int* host_name; } ;
typedef size_t ssize_t ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int*) ;
 size_t EINVAL ;
 size_t ENODEV ;
 int MAX_NAME_LEN ;
 struct claw_privbk* dev_get_drvdata (struct device*) ;
 int memset (int*,int,int) ;
 int setup ;
 int strncpy (int*,char const*,size_t) ;

__attribute__((used)) static ssize_t
claw_hname_write(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct claw_privbk *priv;
 struct claw_env * p_env;

 priv = dev_get_drvdata(dev);
 if (!priv)
  return -ENODEV;
 p_env = priv->p_env;
 if (count > MAX_NAME_LEN+1)
  return -EINVAL;
 memset(p_env->host_name, 0x20, MAX_NAME_LEN);
 strncpy(p_env->host_name,buf, count);
 p_env->host_name[count-1] = 0x20;
 p_env->host_name[MAX_NAME_LEN] = 0x00;
 CLAW_DBF_TEXT(2, setup, "HstnSet");
 CLAW_DBF_TEXT_(2, setup, "%s", p_env->host_name);

 return count;
}
