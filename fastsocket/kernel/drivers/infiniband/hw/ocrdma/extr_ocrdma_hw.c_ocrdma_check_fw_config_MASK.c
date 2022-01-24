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
typedef  int u32 ;
struct ocrdma_fw_conf_rsp {int fn_mode; int /*<<< orphan*/  max_eq; int /*<<< orphan*/  base_eqid; } ;
struct TYPE_2__ {scalar_t__ max_cq; } ;
struct ocrdma_dev {TYPE_1__ attr; int /*<<< orphan*/  max_eq; int /*<<< orphan*/  base_eqid; } ;

/* Variables and functions */
 int EINVAL ; 
 int OCRDMA_FN_MODE_RDMA ; 
 scalar_t__ OCRDMA_MAX_CQ ; 

__attribute__((used)) static int FUNC0(struct ocrdma_dev *dev,
				   struct ocrdma_fw_conf_rsp *conf)
{
	u32 fn_mode;

	fn_mode = conf->fn_mode & OCRDMA_FN_MODE_RDMA;
	if (fn_mode != OCRDMA_FN_MODE_RDMA)
		return -EINVAL;
	dev->base_eqid = conf->base_eqid;
	dev->max_eq = conf->max_eq;
	dev->attr.max_cq = OCRDMA_MAX_CQ - 1;
	return 0;
}