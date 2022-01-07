
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kset; } ;
struct edd_device {TYPE_1__ kobj; } ;


 int KOBJ_ADD ;
 int edd_dev_set_info (struct edd_device*,int) ;
 int edd_kset ;
 int edd_ktype ;
 int edd_populate_dir (struct edd_device*) ;
 int kobject_init_and_add (TYPE_1__*,int *,int *,char*,int) ;
 int kobject_uevent (TYPE_1__*,int ) ;

__attribute__((used)) static int
edd_device_register(struct edd_device *edev, int i)
{
 int error;

 if (!edev)
  return 1;
 edd_dev_set_info(edev, i);
 edev->kobj.kset = edd_kset;
 error = kobject_init_and_add(&edev->kobj, &edd_ktype, ((void*)0),
         "int13_dev%02x", 0x80 + i);
 if (!error) {
  edd_populate_dir(edev);
  kobject_uevent(&edev->kobj, KOBJ_ADD);
 }
 return error;
}
