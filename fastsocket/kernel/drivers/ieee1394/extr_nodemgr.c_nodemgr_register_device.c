
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * class; struct device* parent; } ;
struct unit_directory {struct device device; struct device unit_dev; int id; } ;
struct node_entry {struct device device; } ;


 int HPSB_ERR (char*,int ) ;
 int dev_name (struct device*) ;
 int dev_set_name (struct device*,char*,int ,int ) ;
 scalar_t__ device_register (struct device*) ;
 int device_unregister (struct device*) ;
 int get_device (struct device*) ;
 int memcpy (struct device*,int *,int) ;
 int nodemgr_create_ud_dev_files (struct unit_directory*) ;
 int nodemgr_dev_template_ud ;
 int nodemgr_ud_class ;

__attribute__((used)) static void nodemgr_register_device(struct node_entry *ne,
 struct unit_directory *ud, struct device *parent)
{
 memcpy(&ud->device, &nodemgr_dev_template_ud,
        sizeof(ud->device));

 ud->device.parent = parent;

 dev_set_name(&ud->device, "%s-%u", dev_name(&ne->device), ud->id);

 ud->unit_dev.parent = &ud->device;
 ud->unit_dev.class = &nodemgr_ud_class;
 dev_set_name(&ud->unit_dev, "%s-%u", dev_name(&ne->device), ud->id);

 if (device_register(&ud->device))
  goto fail_devreg;
 if (device_register(&ud->unit_dev))
  goto fail_classdevreg;
 get_device(&ud->device);

 nodemgr_create_ud_dev_files(ud);

 return;

fail_classdevreg:
 device_unregister(&ud->device);
fail_devreg:
 HPSB_ERR("Failed to create unit %s", dev_name(&ud->device));
}
