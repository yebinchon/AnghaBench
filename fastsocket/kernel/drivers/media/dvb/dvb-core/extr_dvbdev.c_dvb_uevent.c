
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobj_uevent_env {int dummy; } ;
struct dvb_device {size_t type; int id; TYPE_1__* adapter; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int num; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct dvb_device* dev_get_drvdata (struct device*) ;
 int * dnames ;

__attribute__((used)) static int dvb_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct dvb_device *dvbdev = dev_get_drvdata(dev);

 add_uevent_var(env, "DVB_ADAPTER_NUM=%d", dvbdev->adapter->num);
 add_uevent_var(env, "DVB_DEVICE_TYPE=%s", dnames[dvbdev->type]);
 add_uevent_var(env, "DVB_DEVICE_NUM=%d", dvbdev->id);
 return 0;
}
