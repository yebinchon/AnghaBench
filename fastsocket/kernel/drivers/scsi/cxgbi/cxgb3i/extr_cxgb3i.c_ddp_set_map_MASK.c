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
struct ulp_mem_io {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  priority; scalar_t__ head; } ;
struct cxgbi_sock {struct cxgbi_device* cdev; } ;
struct cxgbi_pagepod_hdr {int dummy; } ;
struct cxgbi_pagepod {int dummy; } ;
struct cxgbi_gather_list {int dummy; } ;
struct cxgbi_device {int /*<<< orphan*/  lldev; struct cxgbi_ddp_info* ddp; } ;
struct cxgbi_ddp_info {unsigned int llimit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_CONTROL ; 
 int CXGBI_DBG_DDP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PPOD_PAGES_MAX ; 
 scalar_t__ PPOD_SIZE ; 
 unsigned int PPOD_SIZE_SHIFT ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_pagepod*,struct cxgbi_pagepod_hdr*,struct cxgbi_gather_list*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,struct cxgbi_sock*,unsigned int,unsigned int,struct cxgbi_gather_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct cxgbi_sock *csk, struct cxgbi_pagepod_hdr *hdr,
			unsigned int idx, unsigned int npods,
				struct cxgbi_gather_list *gl)
{
	struct cxgbi_device *cdev = csk->cdev;
	struct cxgbi_ddp_info *ddp = cdev->ddp;
	unsigned int pm_addr = (idx << PPOD_SIZE_SHIFT) + ddp->llimit;
	int i;

	FUNC3(1 << CXGBI_DBG_DDP,
		"csk 0x%p, idx %u, npods %u, gl 0x%p.\n",
		csk, idx, npods, gl);

	for (i = 0; i < npods; i++, idx++, pm_addr += PPOD_SIZE) {
		struct sk_buff *skb = FUNC0(sizeof(struct ulp_mem_io) +
						PPOD_SIZE, 0, GFP_ATOMIC);

		if (!skb)
			return -ENOMEM;

		FUNC4(skb, pm_addr);
		FUNC2((struct cxgbi_pagepod *)(skb->head +
					sizeof(struct ulp_mem_io)),
				   hdr, gl, i * PPOD_PAGES_MAX);
		skb->priority = CPL_PRIORITY_CONTROL;
		FUNC1(cdev->lldev, skb);
	}
	return 0;
}