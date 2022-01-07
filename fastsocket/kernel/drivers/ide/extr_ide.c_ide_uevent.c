
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ ide_drive_t ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 int ide_media_string (TYPE_1__*) ;
 TYPE_1__* to_ide_device (struct device*) ;

__attribute__((used)) static int ide_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 ide_drive_t *drive = to_ide_device(dev);

 add_uevent_var(env, "MEDIA=%s", ide_media_string(drive));
 add_uevent_var(env, "DRIVENAME=%s", drive->name);
 add_uevent_var(env, "MODALIAS=ide:m-%s", ide_media_string(drive));
 return 0;
}
