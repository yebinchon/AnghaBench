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
typedef  int u32 ;
struct qib_ctxtdata {int /*<<< orphan*/  ctxt; int /*<<< orphan*/  dd; scalar_t__ rcvhdrtail_kvaddr; } ;

/* Variables and functions */
 int FUNC0 (struct qib_ctxtdata*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ur_rcvhdrhead ; 
 int /*<<< orphan*/  ur_rcvhdrtail ; 

__attribute__((used)) static u32 FUNC2(struct qib_ctxtdata *rcd)
{
	u32 head, tail;

	head = FUNC1(rcd->dd, ur_rcvhdrhead, rcd->ctxt);
	if (rcd->rcvhdrtail_kvaddr)
		tail = FUNC0(rcd);
	else
		tail = FUNC1(rcd->dd, ur_rcvhdrtail, rcd->ctxt);
	return head == tail;
}