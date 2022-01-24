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
typedef  scalar_t__ u64 ;
struct srp_host {int /*<<< orphan*/  list; } ;
struct srp_device {int fmr_page_size; int fmr_max_size; int /*<<< orphan*/ * pd; int /*<<< orphan*/  dev_list; int /*<<< orphan*/ * fmr_pool; int /*<<< orphan*/ * mr; struct ib_device* dev; scalar_t__ fmr_page_mask; int /*<<< orphan*/  page_size_cap; } ;
struct ib_fmr_pool_param {int cache; int max_pages_per_fmr; int page_shift; int access; int /*<<< orphan*/  dirty_watermark; int /*<<< orphan*/  pool_size; } ;
struct ib_device_attr {int fmr_page_size; int fmr_max_size; int /*<<< orphan*/ * pd; int /*<<< orphan*/  dev_list; int /*<<< orphan*/ * fmr_pool; int /*<<< orphan*/ * mr; struct ib_device* dev; scalar_t__ fmr_page_mask; int /*<<< orphan*/  page_size_cap; } ;
struct ib_device {scalar_t__ node_type; int phys_port_cnt; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ RDMA_NODE_IB_SWITCH ; 
 int /*<<< orphan*/  SRP_FMR_DIRTY_SIZE ; 
 int SRP_FMR_MIN_SIZE ; 
 int /*<<< orphan*/  SRP_FMR_POOL_SIZE ; 
 int SRP_FMR_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct ib_device*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,struct ib_fmr_pool_param*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct ib_device*,struct srp_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_device*,int /*<<< orphan*/ *,struct srp_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct srp_device*) ; 
 struct srp_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_fmr_pool_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 struct srp_host* FUNC15 (struct srp_device*,int) ; 
 int /*<<< orphan*/  srp_client ; 

__attribute__((used)) static void FUNC16(struct ib_device *device)
{
	struct srp_device *srp_dev;
	struct ib_device_attr *dev_attr;
	struct ib_fmr_pool_param fmr_param;
	struct srp_host *host;
	int max_pages_per_fmr, fmr_page_shift, s, e, p;

	dev_attr = FUNC10(sizeof *dev_attr, GFP_KERNEL);
	if (!dev_attr)
		return;

	if (FUNC7(device, dev_attr)) {
		FUNC14("Query device failed for %s\n", device->name);
		goto free_attr;
	}

	srp_dev = FUNC10(sizeof *srp_dev, GFP_KERNEL);
	if (!srp_dev)
		goto free_attr;

	/*
	 * Use the smallest page size supported by the HCA, down to a
	 * minimum of 4096 bytes. We're unlikely to build large sglists
	 * out of smaller entries.
	 */
	fmr_page_shift		= FUNC12(12, FUNC2(dev_attr->page_size_cap) - 1);
	srp_dev->fmr_page_size	= 1 << fmr_page_shift;
	srp_dev->fmr_page_mask	= ~((u64) srp_dev->fmr_page_size - 1);
	srp_dev->fmr_max_size	= srp_dev->fmr_page_size * SRP_FMR_SIZE;

	FUNC0(&srp_dev->dev_list);

	srp_dev->dev = device;
	srp_dev->pd  = FUNC3(device);
	if (FUNC1(srp_dev->pd))
		goto free_dev;

	srp_dev->mr = FUNC6(srp_dev->pd,
				    IB_ACCESS_LOCAL_WRITE |
				    IB_ACCESS_REMOTE_READ |
				    IB_ACCESS_REMOTE_WRITE);
	if (FUNC1(srp_dev->mr))
		goto err_pd;

	for (max_pages_per_fmr = SRP_FMR_SIZE;
			max_pages_per_fmr >= SRP_FMR_MIN_SIZE;
			max_pages_per_fmr /= 2, srp_dev->fmr_max_size /= 2) {
		FUNC13(&fmr_param, 0, sizeof fmr_param);
		fmr_param.pool_size	    = SRP_FMR_POOL_SIZE;
		fmr_param.dirty_watermark   = SRP_FMR_DIRTY_SIZE;
		fmr_param.cache		    = 1;
		fmr_param.max_pages_per_fmr = max_pages_per_fmr;
		fmr_param.page_shift	    = fmr_page_shift;
		fmr_param.access	    = (IB_ACCESS_LOCAL_WRITE |
					       IB_ACCESS_REMOTE_WRITE |
					       IB_ACCESS_REMOTE_READ);

		srp_dev->fmr_pool = FUNC4(srp_dev->pd, &fmr_param);
		if (!FUNC1(srp_dev->fmr_pool))
			break;
	}

	if (FUNC1(srp_dev->fmr_pool))
		srp_dev->fmr_pool = NULL;

	if (device->node_type == RDMA_NODE_IB_SWITCH) {
		s = 0;
		e = 0;
	} else {
		s = 1;
		e = device->phys_port_cnt;
	}

	for (p = s; p <= e; ++p) {
		host = FUNC15(srp_dev, p);
		if (host)
			FUNC11(&host->list, &srp_dev->dev_list);
	}

	FUNC8(device, &srp_client, srp_dev);

	goto free_attr;

err_pd:
	FUNC5(srp_dev->pd);

free_dev:
	FUNC9(srp_dev);

free_attr:
	FUNC9(dev_attr);
}