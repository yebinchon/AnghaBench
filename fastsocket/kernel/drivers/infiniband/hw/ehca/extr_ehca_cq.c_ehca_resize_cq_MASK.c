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
struct ib_udata {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

int FUNC1(struct ib_cq *cq, int cqe, struct ib_udata *udata)
{
	/* TODO: proper resize needs to be done */
	FUNC0(cq->device, "not implemented yet");

	return -EFAULT;
}