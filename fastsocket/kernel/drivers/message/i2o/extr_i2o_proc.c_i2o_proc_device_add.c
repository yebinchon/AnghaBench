
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {struct i2o_device* data; } ;
struct TYPE_3__ {int tid; int class_id; } ;
struct i2o_device {TYPE_1__ lct_data; TYPE_2__* iop; } ;
typedef int i2o_proc_entry ;
struct TYPE_4__ {int name; } ;




 int * generic_dev_entries ;
 int i2o_proc_create_entries (struct proc_dir_entry*,int *,struct i2o_device*) ;
 int osm_debug (char*,int ,char*) ;
 int osm_warn (char*) ;
 struct proc_dir_entry* proc_mkdir (char*,struct proc_dir_entry*) ;
 int * rbs_dev_entries ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void i2o_proc_device_add(struct proc_dir_entry *dir,
    struct i2o_device *dev)
{
 char buff[10];
 struct proc_dir_entry *devdir;
 i2o_proc_entry *i2o_pe = ((void*)0);

 sprintf(buff, "%03x", dev->lct_data.tid);

 osm_debug("adding device /proc/i2o/%s/%s\n", dev->iop->name, buff);

 devdir = proc_mkdir(buff, dir);
 if (!devdir) {
  osm_warn("Could not allocate procdir!\n");
  return;
 }

 devdir->data = dev;

 i2o_proc_create_entries(devdir, generic_dev_entries, dev);


 switch (dev->lct_data.class_id) {
 case 128:
 case 129:
  i2o_pe = rbs_dev_entries;
  break;
 default:
  break;
 }
 if (i2o_pe)
  i2o_proc_create_entries(devdir, i2o_pe, dev);
}
