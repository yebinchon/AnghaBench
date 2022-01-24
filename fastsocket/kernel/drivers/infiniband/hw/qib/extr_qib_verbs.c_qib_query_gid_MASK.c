#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef  scalar_t__ u8 ;
struct qib_pportdata {int /*<<< orphan*/  guid; } ;
struct qib_ibport {int /*<<< orphan*/ * guids; int /*<<< orphan*/  gid_prefix; } ;
struct qib_devdata {scalar_t__ num_pports; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int QIB_GUIDS_PER_PORT ; 
 struct qib_devdata* FUNC0 (struct ib_device*) ; 
 struct qib_pportdata* FUNC1 (struct qib_ibport*) ; 
 struct qib_ibport* FUNC2 (struct ib_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ib_device *ibdev, u8 port,
			 int index, union ib_gid *gid)
{
	struct qib_devdata *dd = FUNC0(ibdev);
	int ret = 0;

	if (!port || port > dd->num_pports)
		ret = -EINVAL;
	else {
		struct qib_ibport *ibp = FUNC2(ibdev, port);
		struct qib_pportdata *ppd = FUNC1(ibp);

		gid->global.subnet_prefix = ibp->gid_prefix;
		if (index == 0)
			gid->global.interface_id = ppd->guid;
		else if (index < QIB_GUIDS_PER_PORT)
			gid->global.interface_id = ibp->guids[index - 1];
		else
			ret = -EINVAL;
	}

	return ret;
}