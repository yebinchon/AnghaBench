
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int desc; } ;
struct channel_path {int lock; TYPE_1__ desc; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct channel_path* to_channelpath (struct device*) ;

__attribute__((used)) static ssize_t chp_type_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct channel_path *chp = to_channelpath(dev);
 u8 type;

 mutex_lock(&chp->lock);
 type = chp->desc.desc;
 mutex_unlock(&chp->lock);
 return sprintf(buf, "%x\n", type);
}
