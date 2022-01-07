
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int release; int class; struct device* parent; } ;
struct rtc_device {int id; int max_user_freq; TYPE_1__ dev; int name; int irq_queue; int irq_task_lock; int irq_lock; int ops_lock; struct module* owner; struct rtc_class_ops const* ops; } ;
struct rtc_class_ops {int dummy; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct rtc_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MAX_ID_MASK ;
 int RTC_DEVICE_NAME_SIZE ;
 int dev_err (struct device*,char*,char const*,int) ;
 int dev_info (struct device*,char*,int ,int ) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_register (TYPE_1__*) ;
 int idr_get_new (int *,int *,int*) ;
 int idr_lock ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct rtc_device*) ;
 struct rtc_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_class ;
 int rtc_dev_add_device (struct rtc_device*) ;
 int rtc_dev_prepare (struct rtc_device*) ;
 int rtc_device_release ;
 int rtc_idr ;
 int rtc_proc_add_device (struct rtc_device*) ;
 int rtc_sysfs_add_device (struct rtc_device*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char const*,int ) ;

struct rtc_device *rtc_device_register(const char *name, struct device *dev,
     const struct rtc_class_ops *ops,
     struct module *owner)
{
 struct rtc_device *rtc;
 int id, err;

 if (idr_pre_get(&rtc_idr, GFP_KERNEL) == 0) {
  err = -ENOMEM;
  goto exit;
 }


 mutex_lock(&idr_lock);
 err = idr_get_new(&rtc_idr, ((void*)0), &id);
 mutex_unlock(&idr_lock);

 if (err < 0)
  goto exit;

 id = id & MAX_ID_MASK;

 rtc = kzalloc(sizeof(struct rtc_device), GFP_KERNEL);
 if (rtc == ((void*)0)) {
  err = -ENOMEM;
  goto exit_idr;
 }

 rtc->id = id;
 rtc->ops = ops;
 rtc->owner = owner;
 rtc->max_user_freq = 64;
 rtc->dev.parent = dev;
 rtc->dev.class = rtc_class;
 rtc->dev.release = rtc_device_release;

 mutex_init(&rtc->ops_lock);
 spin_lock_init(&rtc->irq_lock);
 spin_lock_init(&rtc->irq_task_lock);
 init_waitqueue_head(&rtc->irq_queue);

 strlcpy(rtc->name, name, RTC_DEVICE_NAME_SIZE);
 dev_set_name(&rtc->dev, "rtc%d", id);

 rtc_dev_prepare(rtc);

 err = device_register(&rtc->dev);
 if (err)
  goto exit_kfree;

 rtc_dev_add_device(rtc);
 rtc_sysfs_add_device(rtc);
 rtc_proc_add_device(rtc);

 dev_info(dev, "rtc core: registered %s as %s\n",
   rtc->name, dev_name(&rtc->dev));

 return rtc;

exit_kfree:
 kfree(rtc);

exit_idr:
 mutex_lock(&idr_lock);
 idr_remove(&rtc_idr, id);
 mutex_unlock(&idr_lock);

exit:
 dev_err(dev, "rtc core: unable to register %s, err = %d\n",
   name, err);
 return ERR_PTR(err);
}
