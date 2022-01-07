
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sch_no; int ssid; } ;
struct subchannel {int reg_mutex; int dev; TYPE_1__ schid; } ;


 int dev_set_name (int *,char*,int ,int ) ;
 int device_register (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int css_sch_device_register(struct subchannel *sch)
{
 int ret;

 mutex_lock(&sch->reg_mutex);
 dev_set_name(&sch->dev, "0.%x.%04x", sch->schid.ssid,
       sch->schid.sch_no);
 ret = device_register(&sch->dev);
 mutex_unlock(&sch->reg_mutex);
 return ret;
}
