#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct qib_pportdata {int /*<<< orphan*/  pport_kobj; int /*<<< orphan*/  sl2vl_kobj; int /*<<< orphan*/  diagc_kobj; int /*<<< orphan*/  pport_cc_kobj; int /*<<< orphan*/  congestion_entries_shadow; } ;
struct qib_devdata {int num_pports; int /*<<< orphan*/  unit; int /*<<< orphan*/  pcidev; struct qib_pportdata* pport; } ;
struct kobject {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  cc_setting_bin_attr ; 
 int /*<<< orphan*/  cc_table_bin_attr ; 
 struct qib_devdata* FUNC0 (struct ib_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct kobject*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_cc_table_size ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qib_diagc_ktype ; 
 int /*<<< orphan*/  qib_port_cc_ktype ; 
 int /*<<< orphan*/  qib_port_ktype ; 
 int /*<<< orphan*/  qib_sl2vl_ktype ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct ib_device *ibdev, u8 port_num,
			  struct kobject *kobj)
{
	struct qib_pportdata *ppd;
	struct qib_devdata *dd = FUNC0(ibdev);
	int ret;

	if (!port_num || port_num > dd->num_pports) {
		FUNC4(dd,
			"Skipping infiniband class with invalid port %u\n",
			port_num);
		ret = -ENODEV;
		goto bail;
	}
	ppd = &dd->pport[port_num - 1];

	ret = FUNC1(&ppd->pport_kobj, &qib_port_ktype, kobj,
				   "linkcontrol");
	if (ret) {
		FUNC4(dd,
			"Skipping linkcontrol sysfs info, (err %d) port %u\n",
			ret, port_num);
		goto bail;
	}
	FUNC3(&ppd->pport_kobj, KOBJ_ADD);

	ret = FUNC1(&ppd->sl2vl_kobj, &qib_sl2vl_ktype, kobj,
				   "sl2vl");
	if (ret) {
		FUNC4(dd,
			"Skipping sl2vl sysfs info, (err %d) port %u\n",
			ret, port_num);
		goto bail_link;
	}
	FUNC3(&ppd->sl2vl_kobj, KOBJ_ADD);

	ret = FUNC1(&ppd->diagc_kobj, &qib_diagc_ktype, kobj,
				   "diag_counters");
	if (ret) {
		FUNC4(dd,
			"Skipping diag_counters sysfs info, (err %d) port %u\n",
			ret, port_num);
		goto bail_sl;
	}
	FUNC3(&ppd->diagc_kobj, KOBJ_ADD);

	if (!qib_cc_table_size || !ppd->congestion_entries_shadow)
		return 0;

	ret = FUNC1(&ppd->pport_cc_kobj, &qib_port_cc_ktype,
				kobj, "CCMgtA");
	if (ret) {
		FUNC4(dd,
		 "Skipping Congestion Control sysfs info, (err %d) port %u\n",
		 ret, port_num);
		goto bail_diagc;
	}

	FUNC3(&ppd->pport_cc_kobj, KOBJ_ADD);

	ret = FUNC6(&ppd->pport_cc_kobj,
				&cc_setting_bin_attr);
	if (ret) {
		FUNC4(dd,
		 "Skipping Congestion Control setting sysfs info, (err %d) port %u\n",
		 ret, port_num);
		goto bail_cc;
	}

	ret = FUNC6(&ppd->pport_cc_kobj,
				&cc_table_bin_attr);
	if (ret) {
		FUNC4(dd,
		 "Skipping Congestion Control table sysfs info, (err %d) port %u\n",
		 ret, port_num);
		goto bail_cc_entry_bin;
	}

	FUNC5(dd->pcidev,
		"IB%u: Congestion Control Agent enabled for port %d\n",
		dd->unit, port_num);

	return 0;

bail_cc_entry_bin:
	FUNC7(&ppd->pport_cc_kobj, &cc_setting_bin_attr);
bail_cc:
	FUNC2(&ppd->pport_cc_kobj);
bail_diagc:
	FUNC2(&ppd->diagc_kobj);
bail_sl:
	FUNC2(&ppd->sl2vl_kobj);
bail_link:
	FUNC2(&ppd->pport_kobj);
bail:
	return ret;
}