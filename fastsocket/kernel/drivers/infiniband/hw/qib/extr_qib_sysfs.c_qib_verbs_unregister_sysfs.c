
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int pport_kobj; int sl2vl_kobj; int pport_cc_kobj; scalar_t__ congestion_entries_shadow; } ;
struct qib_devdata {int num_pports; struct qib_pportdata* pport; } ;


 int cc_setting_bin_attr ;
 int cc_table_bin_attr ;
 int kobject_put (int *) ;
 scalar_t__ qib_cc_table_size ;
 int sysfs_remove_bin_file (int *,int *) ;

void qib_verbs_unregister_sysfs(struct qib_devdata *dd)
{
 struct qib_pportdata *ppd;
 int i;

 for (i = 0; i < dd->num_pports; i++) {
  ppd = &dd->pport[i];
  if (qib_cc_table_size &&
   ppd->congestion_entries_shadow) {
   sysfs_remove_bin_file(&ppd->pport_cc_kobj,
    &cc_setting_bin_attr);
   sysfs_remove_bin_file(&ppd->pport_cc_kobj,
    &cc_table_bin_attr);
   kobject_put(&ppd->pport_cc_kobj);
  }
  kobject_put(&ppd->sl2vl_kobj);
  kobject_put(&ppd->pport_kobj);
 }
}
