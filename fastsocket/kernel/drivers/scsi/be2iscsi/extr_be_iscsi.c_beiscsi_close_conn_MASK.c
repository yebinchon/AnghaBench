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
struct beiscsi_hba {int dummy; } ;
struct beiscsi_endpoint {int /*<<< orphan*/  ep_cid; struct beiscsi_hba* phba; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int EAGAIN ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct beiscsi_hba*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct  beiscsi_endpoint *beiscsi_ep, int flag)
{
	int ret = 0;
	unsigned int tag;
	struct beiscsi_hba *phba = beiscsi_ep->phba;

	tag = FUNC2(phba, beiscsi_ep->ep_cid, flag);
	if (!tag) {
		FUNC0(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
			    "BS_%d : upload failed for cid 0x%x\n",
			    beiscsi_ep->ep_cid);

		ret = -EAGAIN;
	}

	ret = FUNC1(phba, tag, NULL, NULL);
	return ret;
}