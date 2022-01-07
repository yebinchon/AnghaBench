
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct chp_id {size_t cssid; size_t id; } ;
struct TYPE_9__ {int kobj; int release; int * parent; } ;
struct TYPE_8__ {int flags; } ;
struct channel_path {int state; int cmg; TYPE_2__ dev; TYPE_1__ desc; int lock; struct chp_id chpid; } ;
struct TYPE_11__ {int mutex; struct channel_path** chps; scalar_t__ cm_enabled; int device; } ;
struct TYPE_10__ {scalar_t__ secm; scalar_t__ scmc; } ;


 int CIO_MSG_EVENT (int ,char*,size_t,size_t,int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_7__** channel_subsystems ;
 int chp_add_cmg_attr (struct channel_path*) ;
 int chp_attr_group ;
 scalar_t__ chp_is_registered (struct chp_id) ;
 int chp_release ;
 int chp_update_desc (struct channel_path*) ;
 int chsc_get_channel_measurement_chars (struct channel_path*) ;
 TYPE_6__ css_chsc_characteristics ;
 int dev_set_name (TYPE_2__*,char*,size_t,size_t) ;
 int device_register (TYPE_2__*) ;
 int device_unregister (TYPE_2__*) ;
 int kfree (struct channel_path*) ;
 struct channel_path* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_2__*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

int chp_new(struct chp_id chpid)
{
 struct channel_path *chp;
 int ret;

 if (chp_is_registered(chpid))
  return 0;
 chp = kzalloc(sizeof(struct channel_path), GFP_KERNEL);
 if (!chp)
  return -ENOMEM;


 chp->chpid = chpid;
 chp->state = 1;
 chp->dev.parent = &channel_subsystems[chpid.cssid]->device;
 chp->dev.release = chp_release;
 mutex_init(&chp->lock);


 ret = chp_update_desc(chp);
 if (ret)
  goto out_free;
 if ((chp->desc.flags & 0x80) == 0) {
  ret = -ENODEV;
  goto out_free;
 }

 if (css_chsc_characteristics.scmc && css_chsc_characteristics.secm) {
  ret = chsc_get_channel_measurement_chars(chp);
  if (ret)
   goto out_free;
 } else {
  chp->cmg = -1;
 }
 dev_set_name(&chp->dev, "chp%x.%02x", chpid.cssid, chpid.id);


 ret = device_register(&chp->dev);
 if (ret) {
  CIO_MSG_EVENT(0, "Could not register chp%x.%02x: %d\n",
         chpid.cssid, chpid.id, ret);
  put_device(&chp->dev);
  goto out;
 }
 ret = sysfs_create_group(&chp->dev.kobj, &chp_attr_group);
 if (ret) {
  device_unregister(&chp->dev);
  goto out;
 }
 mutex_lock(&channel_subsystems[chpid.cssid]->mutex);
 if (channel_subsystems[chpid.cssid]->cm_enabled) {
  ret = chp_add_cmg_attr(chp);
  if (ret) {
   sysfs_remove_group(&chp->dev.kobj, &chp_attr_group);
   device_unregister(&chp->dev);
   mutex_unlock(&channel_subsystems[chpid.cssid]->mutex);
   goto out;
  }
 }
 channel_subsystems[chpid.cssid]->chps[chpid.id] = chp;
 mutex_unlock(&channel_subsystems[chpid.cssid]->mutex);
 goto out;
out_free:
 kfree(chp);
out:
 return ret;
}
