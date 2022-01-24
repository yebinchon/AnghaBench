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
struct iser_mem_reg {int /*<<< orphan*/ * mem_h; } ;
struct ib_pool_fmr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ib_pool_fmr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3(struct iser_mem_reg *reg)
{
	int ret;

	FUNC1("PHYSICAL Mem.Unregister mem_h %p\n",reg->mem_h);

	ret = FUNC0((struct ib_pool_fmr *)reg->mem_h);
	if (ret)
		FUNC2("ib_fmr_pool_unmap failed %d\n", ret);

	reg->mem_h = NULL;
}