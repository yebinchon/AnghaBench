
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidraw {int minor; int exist; struct hid_device* hid; int list; int wait; int dev; } ;
struct hid_device {struct hidraw* hidraw; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIDRAW_MAX_DEVICES ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int MKDEV (int ,int) ;
 int PTR_ERR (int ) ;
 int device_create (int ,int *,int ,int *,char*,char*,int) ;
 int hidraw_class ;
 int hidraw_major ;
 struct hidraw** hidraw_table ;
 int init_waitqueue_head (int *) ;
 int kfree (struct hidraw*) ;
 struct hidraw* kzalloc (int,int ) ;
 int minors_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hidraw_connect(struct hid_device *hid)
{
 int minor, result;
 struct hidraw *dev;



 dev = kzalloc(sizeof(struct hidraw), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 result = -EINVAL;

 mutex_lock(&minors_lock);

 for (minor = 0; minor < HIDRAW_MAX_DEVICES; minor++) {
  if (hidraw_table[minor])
   continue;
  hidraw_table[minor] = dev;
  result = 0;
  break;
 }

 if (result) {
  mutex_unlock(&minors_lock);
  kfree(dev);
  goto out;
 }

 dev->dev = device_create(hidraw_class, &hid->dev, MKDEV(hidraw_major, minor),
     ((void*)0), "%s%d", "hidraw", minor);

 if (IS_ERR(dev->dev)) {
  hidraw_table[minor] = ((void*)0);
  mutex_unlock(&minors_lock);
  result = PTR_ERR(dev->dev);
  kfree(dev);
  goto out;
 }

 mutex_unlock(&minors_lock);
 init_waitqueue_head(&dev->wait);
 INIT_LIST_HEAD(&dev->list);

 dev->hid = hid;
 dev->minor = minor;

 dev->exist = 1;
 hid->hidraw = dev;

out:
 return result;

}
