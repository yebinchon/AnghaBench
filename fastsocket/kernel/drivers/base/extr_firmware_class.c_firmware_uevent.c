
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct firmware_priv {int fw_id; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct firmware_priv* dev_get_drvdata (struct device*) ;
 int loading_timeout ;

__attribute__((used)) static int firmware_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct firmware_priv *fw_priv = dev_get_drvdata(dev);

 if (add_uevent_var(env, "FIRMWARE=%s", fw_priv->fw_id))
  return -ENOMEM;
 if (add_uevent_var(env, "TIMEOUT=%i", loading_timeout))
  return -ENOMEM;

 return 0;
}
