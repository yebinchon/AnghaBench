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
typedef  scalar_t__ u64 ;
struct ehea_cq {int /*<<< orphan*/  hw_queue; int /*<<< orphan*/  fw_handle; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ handle; } ;

/* Variables and functions */
 scalar_t__ H_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_cq*) ; 

__attribute__((used)) static u64 FUNC3(struct ehea_cq *cq, u64 force)
{
	u64 hret;
	u64 adapter_handle = cq->adapter->handle;

	/* deregister all previous registered pages */
	hret = FUNC0(adapter_handle, cq->fw_handle, force);
	if (hret != H_SUCCESS)
		return hret;

	FUNC1(&cq->hw_queue);
	FUNC2(cq);

	return hret;
}