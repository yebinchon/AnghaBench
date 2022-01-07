
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_pportdata {int pport_kobj; int sl2vl_kobj; int diagc_kobj; int pport_cc_kobj; int congestion_entries_shadow; } ;
struct qib_devdata {int num_pports; int unit; int pcidev; struct qib_pportdata* pport; } ;
struct kobject {int dummy; } ;
struct ib_device {int dummy; } ;


 int ENODEV ;
 int KOBJ_ADD ;
 int cc_setting_bin_attr ;
 int cc_table_bin_attr ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 int kobject_init_and_add (int *,int *,struct kobject*,char*) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 int qib_cc_table_size ;
 int qib_dev_err (struct qib_devdata*,char*,int,...) ;
 int qib_devinfo (int ,char*,int ,int) ;
 int qib_diagc_ktype ;
 int qib_port_cc_ktype ;
 int qib_port_ktype ;
 int qib_sl2vl_ktype ;
 int sysfs_create_bin_file (int *,int *) ;
 int sysfs_remove_bin_file (int *,int *) ;

int qib_create_port_files(struct ib_device *ibdev, u8 port_num,
     struct kobject *kobj)
{
 struct qib_pportdata *ppd;
 struct qib_devdata *dd = dd_from_ibdev(ibdev);
 int ret;

 if (!port_num || port_num > dd->num_pports) {
  qib_dev_err(dd,
   "Skipping infiniband class with invalid port %u\n",
   port_num);
  ret = -ENODEV;
  goto bail;
 }
 ppd = &dd->pport[port_num - 1];

 ret = kobject_init_and_add(&ppd->pport_kobj, &qib_port_ktype, kobj,
       "linkcontrol");
 if (ret) {
  qib_dev_err(dd,
   "Skipping linkcontrol sysfs info, (err %d) port %u\n",
   ret, port_num);
  goto bail;
 }
 kobject_uevent(&ppd->pport_kobj, KOBJ_ADD);

 ret = kobject_init_and_add(&ppd->sl2vl_kobj, &qib_sl2vl_ktype, kobj,
       "sl2vl");
 if (ret) {
  qib_dev_err(dd,
   "Skipping sl2vl sysfs info, (err %d) port %u\n",
   ret, port_num);
  goto bail_link;
 }
 kobject_uevent(&ppd->sl2vl_kobj, KOBJ_ADD);

 ret = kobject_init_and_add(&ppd->diagc_kobj, &qib_diagc_ktype, kobj,
       "diag_counters");
 if (ret) {
  qib_dev_err(dd,
   "Skipping diag_counters sysfs info, (err %d) port %u\n",
   ret, port_num);
  goto bail_sl;
 }
 kobject_uevent(&ppd->diagc_kobj, KOBJ_ADD);

 if (!qib_cc_table_size || !ppd->congestion_entries_shadow)
  return 0;

 ret = kobject_init_and_add(&ppd->pport_cc_kobj, &qib_port_cc_ktype,
    kobj, "CCMgtA");
 if (ret) {
  qib_dev_err(dd,
   "Skipping Congestion Control sysfs info, (err %d) port %u\n",
   ret, port_num);
  goto bail_diagc;
 }

 kobject_uevent(&ppd->pport_cc_kobj, KOBJ_ADD);

 ret = sysfs_create_bin_file(&ppd->pport_cc_kobj,
    &cc_setting_bin_attr);
 if (ret) {
  qib_dev_err(dd,
   "Skipping Congestion Control setting sysfs info, (err %d) port %u\n",
   ret, port_num);
  goto bail_cc;
 }

 ret = sysfs_create_bin_file(&ppd->pport_cc_kobj,
    &cc_table_bin_attr);
 if (ret) {
  qib_dev_err(dd,
   "Skipping Congestion Control table sysfs info, (err %d) port %u\n",
   ret, port_num);
  goto bail_cc_entry_bin;
 }

 qib_devinfo(dd->pcidev,
  "IB%u: Congestion Control Agent enabled for port %d\n",
  dd->unit, port_num);

 return 0;

bail_cc_entry_bin:
 sysfs_remove_bin_file(&ppd->pport_cc_kobj, &cc_setting_bin_attr);
bail_cc:
 kobject_put(&ppd->pport_cc_kobj);
bail_diagc:
 kobject_put(&ppd->diagc_kobj);
bail_sl:
 kobject_put(&ppd->sl2vl_kobj);
bail_link:
 kobject_put(&ppd->pport_kobj);
bail:
 return ret;
}
