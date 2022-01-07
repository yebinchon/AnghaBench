
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct channel_path {int lock; TYPE_1__ desc_fmt1; } ;
typedef scalar_t__ ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sprintf (char*,char*,int) ;
 struct channel_path* to_channelpath (struct device*) ;

__attribute__((used)) static ssize_t chp_chid_external_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct channel_path *chp = to_channelpath(dev);
 ssize_t rc;

 mutex_lock(&chp->lock);
 if (chp->desc_fmt1.flags & 0x10)
  rc = sprintf(buf, "%x\n", chp->desc_fmt1.flags & 0x8 ? 1 : 0);
 else
  rc = 0;
 mutex_unlock(&chp->lock);

 return rc;
}
