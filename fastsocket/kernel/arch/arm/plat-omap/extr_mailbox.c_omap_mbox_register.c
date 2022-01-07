
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dev; int name; scalar_t__ next; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_attr_mbox ;
 int device_create (int *,struct device*,int ,struct omap_mbox*,char*,int ) ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int device_unregister (int ) ;
 struct omap_mbox** find_mboxes (int ) ;
 int mboxes_lock ;
 int omap_mbox_class ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int omap_mbox_register(struct device *parent, struct omap_mbox *mbox)
{
 int ret = 0;
 struct omap_mbox **tmp;

 if (!mbox)
  return -EINVAL;
 if (mbox->next)
  return -EBUSY;

 mbox->dev = device_create(&omap_mbox_class,
      parent, 0, mbox, "%s", mbox->name);
 if (IS_ERR(mbox->dev))
  return PTR_ERR(mbox->dev);

 ret = device_create_file(mbox->dev, &dev_attr_mbox);
 if (ret)
  goto err_sysfs;

 write_lock(&mboxes_lock);
 tmp = find_mboxes(mbox->name);
 if (*tmp) {
  ret = -EBUSY;
  write_unlock(&mboxes_lock);
  goto err_find;
 }
 *tmp = mbox;
 write_unlock(&mboxes_lock);

 return 0;

err_find:
 device_remove_file(mbox->dev, &dev_attr_mbox);
err_sysfs:
 device_unregister(mbox->dev);
 return ret;
}
