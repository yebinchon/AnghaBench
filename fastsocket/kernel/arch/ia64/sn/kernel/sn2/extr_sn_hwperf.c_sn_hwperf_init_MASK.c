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
typedef  int u64 ;
typedef  scalar_t__ nasid_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ SN_HWPERF_GET_HEAPSIZE ; 
 int SN_HWPERF_INSTALL_HEAP ; 
 int SN_HWPERF_OBJECT_COUNT ; 
 int SN_HWPERF_OP_OK ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sn_hwperf_init_mutex ; 
 scalar_t__ sn_hwperf_master_nasid ; 
 int sn_hwperf_obj_cnt ; 
 int /*<<< orphan*/ * sn_hwperf_salheap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void)
{
	u64 v;
	int salr;
	int e = 0;

	/* single threaded, once-only initialization */
	FUNC2(&sn_hwperf_init_mutex);

	if (sn_hwperf_salheap) {
		FUNC3(&sn_hwperf_init_mutex);
		return e;
	}

	/*
	 * The PROM code needs a fixed reference node. For convenience the
	 * same node as the console I/O is used.
	 */
	sn_hwperf_master_nasid = (nasid_t) FUNC0();

	/*
	 * Request the needed size and install the PROM scratch area.
	 * The PROM keeps various tracking bits in this memory area.
	 */
	salr = FUNC1(sn_hwperf_master_nasid,
				 (u64) SN_HWPERF_GET_HEAPSIZE, 0,
				 (u64) sizeof(u64), (u64) &v, 0, 0, NULL);
	if (salr != SN_HWPERF_OP_OK) {
		e = -EINVAL;
		goto out;
	}

	if ((sn_hwperf_salheap = FUNC5(v)) == NULL) {
		e = -ENOMEM;
		goto out;
	}
	salr = FUNC1(sn_hwperf_master_nasid,
				 SN_HWPERF_INSTALL_HEAP, 0, v,
				 (u64) sn_hwperf_salheap, 0, 0, NULL);
	if (salr != SN_HWPERF_OP_OK) {
		e = -EINVAL;
		goto out;
	}

	salr = FUNC1(sn_hwperf_master_nasid,
				 SN_HWPERF_OBJECT_COUNT, 0,
				 sizeof(u64), (u64) &v, 0, 0, NULL);
	if (salr != SN_HWPERF_OP_OK) {
		e = -EINVAL;
		goto out;
	}
	sn_hwperf_obj_cnt = (int)v;

out:
	if (e < 0 && sn_hwperf_salheap) {
		FUNC4(sn_hwperf_salheap);
		sn_hwperf_salheap = NULL;
		sn_hwperf_obj_cnt = 0;
	}
	FUNC3(&sn_hwperf_init_mutex);
	return e;
}