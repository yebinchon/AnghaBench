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
struct dst_entry {int dummy; } ;
struct cxgbi_sock {unsigned int advmss; TYPE_1__* cdev; struct dst_entry* dst; } ;
struct TYPE_2__ {int* mtus; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_ADVMSS ; 
 unsigned int FUNC0 (struct cxgbi_sock*,int) ; 
 unsigned int FUNC1 (struct dst_entry*,int /*<<< orphan*/ ) ; 

unsigned int FUNC2(struct cxgbi_sock *csk, unsigned int pmtu)
{
	unsigned int idx;
	struct dst_entry *dst = csk->dst;

	csk->advmss = FUNC1(dst, RTAX_ADVMSS);

	if (csk->advmss > pmtu - 40)
		csk->advmss = pmtu - 40;
	if (csk->advmss < csk->cdev->mtus[0] - 40)
		csk->advmss = csk->cdev->mtus[0] - 40;
	idx = FUNC0(csk, csk->advmss + 40);

	return idx;
}