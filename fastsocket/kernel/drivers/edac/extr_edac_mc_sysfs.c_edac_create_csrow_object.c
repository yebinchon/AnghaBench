
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct mem_ctl_info {struct kobject edac_mci_kobj; } ;
struct csrow_info {int nr_channels; struct kobject kobj; struct mem_ctl_info* mci; } ;


 int ENODEV ;
 int KOBJ_ADD ;
 int edac_create_channel_files (struct kobject*,int) ;
 struct kobject* kobject_get (struct kobject*) ;
 int kobject_init_and_add (struct kobject*,int *,struct kobject*,char*,int) ;
 int kobject_put (struct kobject*) ;
 int kobject_uevent (struct kobject*,int ) ;
 int ktype_csrow ;
 int memset (struct kobject*,int ,int) ;

__attribute__((used)) static int edac_create_csrow_object(struct mem_ctl_info *mci,
     struct csrow_info *csrow, int index)
{
 struct kobject *kobj_mci = &mci->edac_mci_kobj;
 struct kobject *kobj;
 int chan;
 int err;


 memset(&csrow->kobj, 0, sizeof(csrow->kobj));
 csrow->mci = mci;


 kobj = kobject_get(&mci->edac_mci_kobj);
 if (!kobj) {
  err = -ENODEV;
  goto err_out;
 }


 err = kobject_init_and_add(&csrow->kobj, &ktype_csrow, kobj_mci,
       "csrow%d", index);
 if (err)
  goto err_release_top_kobj;
 for (chan = 0; chan < csrow->nr_channels; chan++) {
  err = edac_create_channel_files(&csrow->kobj, chan);
  if (err) {

   kobject_put(&csrow->kobj);
   goto err_out;
  }
 }
 kobject_uevent(&csrow->kobj, KOBJ_ADD);
 return 0;


err_release_top_kobj:
 kobject_put(&mci->edac_mci_kobj);

err_out:
 return err;
}
