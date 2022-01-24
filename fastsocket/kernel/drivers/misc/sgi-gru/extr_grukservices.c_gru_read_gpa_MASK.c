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

/* Variables and functions */
 int CBS_IDLE ; 
 int /*<<< orphan*/  GRU_NUM_KERNEL_DSR_BYTES ; 
 int /*<<< orphan*/  IMA ; 
 int MQE_BUG_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**,void**) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  read_gpa ; 

int FUNC6(unsigned long *value, unsigned long gpa)
{
	void *cb;
	void *dsr;
	int ret, iaa;

	FUNC0(read_gpa);
	if (FUNC2(GRU_NUM_KERNEL_DSR_BYTES, &cb, &dsr))
		return MQE_BUG_NO_RESOURCES;
	iaa = gpa >> 62;
	FUNC4(cb, gpa, FUNC3(dsr), iaa, IMA);
	ret = FUNC5(cb);
	if (ret == CBS_IDLE)
		*value = *(unsigned long *)dsr;
	FUNC1(cb, dsr);
	return ret;
}