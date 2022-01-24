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
struct cxgbi_device {struct cxgbi_ddp_info* ddp; } ;
struct cxgbi_ddp_info {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int CXGBI_DBG_DDP ; 
 int /*<<< orphan*/  ddp_destroy ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct cxgbi_device*,struct cxgbi_ddp_info*) ; 

int FUNC2(struct cxgbi_device *cdev)
{
	struct cxgbi_ddp_info *ddp = cdev->ddp;

	FUNC1(1 << CXGBI_DBG_DDP,
		"cdev 0x%p, release ddp 0x%p.\n", cdev, ddp);
	cdev->ddp = NULL;
	if (ddp)
		return FUNC0(&ddp->refcnt, ddp_destroy);
	return 0;
}