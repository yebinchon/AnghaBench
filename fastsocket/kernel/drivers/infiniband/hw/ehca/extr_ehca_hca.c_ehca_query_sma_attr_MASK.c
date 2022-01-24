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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct hipz_query_port {int /*<<< orphan*/  pkey_entries; int /*<<< orphan*/  pkey_tbl_len; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  sm_sl; int /*<<< orphan*/  lmc; int /*<<< orphan*/  lid; } ;
struct ehca_sma_attr {int /*<<< orphan*/  pkeys; int /*<<< orphan*/  pkey_tbl_len; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  sm_sl; int /*<<< orphan*/  lmc; int /*<<< orphan*/  lid; } ;
struct ehca_shca {int /*<<< orphan*/  ib_device; int /*<<< orphan*/  ipz_hca_handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ H_SUCCESS ; 
 struct hipz_query_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hipz_query_port*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hipz_query_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ehca_sma_attr*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct ehca_shca *shca,
			u8 port, struct ehca_sma_attr *attr)
{
	int ret = 0;
	u64 h_ret;
	struct hipz_query_port *rblock;

	rblock = FUNC0(GFP_ATOMIC);
	if (!rblock) {
		FUNC1(&shca->ib_device, "Can't allocate rblock memory.");
		return -ENOMEM;
	}

	h_ret = FUNC3(shca->ipz_hca_handle, port, rblock);
	if (h_ret != H_SUCCESS) {
		FUNC1(&shca->ib_device, "Can't query port properties");
		ret = -EINVAL;
		goto query_sma_attr1;
	}

	FUNC5(attr, 0, sizeof(struct ehca_sma_attr));

	attr->lid    = rblock->lid;
	attr->lmc    = rblock->lmc;
	attr->sm_sl  = rblock->sm_sl;
	attr->sm_lid = rblock->sm_lid;

	attr->pkey_tbl_len = rblock->pkey_tbl_len;
	FUNC4(attr->pkeys, rblock->pkey_entries, sizeof(attr->pkeys));

query_sma_attr1:
	FUNC2(rblock);

	return ret;
}