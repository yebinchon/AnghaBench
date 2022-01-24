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
typedef  size_t u32 ;
struct cnic_local {size_t max_cid_space; struct cnic_context* ctx_tbl; } ;
struct cnic_dev {int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;
struct cnic_context {int /*<<< orphan*/  cid; int /*<<< orphan*/  ctx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTX_FL_DELETE_WAIT ; 
 int /*<<< orphan*/  CTX_FL_OFFLD_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cnic_dev *dev, u32 start_cid)
{
	struct cnic_local *cp = dev->cnic_priv;
	u32 i;

	for (i = start_cid; i < cp->max_cid_space; i++) {
		struct cnic_context *ctx = &cp->ctx_tbl[i];
		int j;

		while (FUNC2(CTX_FL_DELETE_WAIT, &ctx->ctx_flags))
			FUNC0(10);

		for (j = 0; j < 5; j++) {
			if (!FUNC2(CTX_FL_OFFLD_START, &ctx->ctx_flags))
				break;
			FUNC0(20);
		}

		if (FUNC2(CTX_FL_OFFLD_START, &ctx->ctx_flags))
			FUNC1(dev->netdev, "CID %x not deleted\n",
				   ctx->cid);
	}
}