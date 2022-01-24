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
typedef  int /*<<< orphan*/  u32 ;
struct ipath_user_info {unsigned int spu_subport_cnt; int spu_userversion; int /*<<< orphan*/  spu_subport_id; } ;
struct ipath_portdata {unsigned int port_rcvegrbuf_chunks; unsigned int port_rcvegrbuf_size; unsigned int port_subport_cnt; int active_slaves; int /*<<< orphan*/ * subport_uregbase; int /*<<< orphan*/ * subport_rcvhdr_base; int /*<<< orphan*/  port_flag; int /*<<< orphan*/  port_subport_id; void* subport_rcvegrbuf; } ;
struct ipath_devdata {int ipath_rcvhdrcnt; int ipath_rcvhdrentsize; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,unsigned int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int INFINIPATH_MAX_SUBPORT ; 
 int /*<<< orphan*/  IPATH_PORT_MASTER_UNINIT ; 
 int IPATH_USER_SWMAJOR ; 
 int IPATH_USER_SWMINOR ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (unsigned int) ; 

__attribute__((used)) static int FUNC7(struct ipath_devdata *dd,
			 struct ipath_portdata *pd,
			 const struct ipath_user_info *uinfo)
{
	int ret = 0;
	unsigned num_subports;
	size_t size;

	/*
	 * If the user is requesting zero subports,
	 * skip the subport allocation.
	 */
	if (uinfo->spu_subport_cnt <= 0)
		goto bail;

	/* Self-consistency check for ipath_compatible_subports() */
	if (FUNC3(IPATH_USER_SWMAJOR, IPATH_USER_SWMINOR) &&
	    !FUNC2(IPATH_USER_SWMAJOR,
				       IPATH_USER_SWMINOR)) {
		FUNC1(&dd->pcidev->dev,
			 "Inconsistent ipath_compatible_subports()\n");
		goto bail;
	}

	/* Check for subport compatibility */
	if (!FUNC2(uinfo->spu_userversion >> 16,
				       uinfo->spu_userversion & 0xffff)) {
		FUNC1(&dd->pcidev->dev,
			 "Mismatched user version (%d.%d) and driver "
			 "version (%d.%d) while port sharing. Ensure "
                         "that driver and library are from the same "
                         "release.\n",
			 (int) (uinfo->spu_userversion >> 16),
                         (int) (uinfo->spu_userversion & 0xffff),
			 IPATH_USER_SWMAJOR,
	                 IPATH_USER_SWMINOR);
		goto bail;
	}
	if (uinfo->spu_subport_cnt > INFINIPATH_MAX_SUBPORT) {
		ret = -EINVAL;
		goto bail;
	}

	num_subports = uinfo->spu_subport_cnt;
	pd->subport_uregbase = FUNC6(PAGE_SIZE * num_subports);
	if (!pd->subport_uregbase) {
		ret = -ENOMEM;
		goto bail;
	}
	/* Note: pd->port_rcvhdrq_size isn't initialized yet. */
	size = FUNC0(dd->ipath_rcvhdrcnt * dd->ipath_rcvhdrentsize *
		     sizeof(u32), PAGE_SIZE) * num_subports;
	pd->subport_rcvhdr_base = FUNC6(size);
	if (!pd->subport_rcvhdr_base) {
		ret = -ENOMEM;
		goto bail_ureg;
	}

	pd->subport_rcvegrbuf = FUNC6(pd->port_rcvegrbuf_chunks *
					pd->port_rcvegrbuf_size *
					num_subports);
	if (!pd->subport_rcvegrbuf) {
		ret = -ENOMEM;
		goto bail_rhdr;
	}

	pd->port_subport_cnt = uinfo->spu_subport_cnt;
	pd->port_subport_id = uinfo->spu_subport_id;
	pd->active_slaves = 1;
	FUNC4(IPATH_PORT_MASTER_UNINIT, &pd->port_flag);
	goto bail;

bail_rhdr:
	FUNC5(pd->subport_rcvhdr_base);
bail_ureg:
	FUNC5(pd->subport_uregbase);
	pd->subport_uregbase = NULL;
bail:
	return ret;
}