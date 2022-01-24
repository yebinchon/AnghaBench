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
typedef  scalar_t__ u64 ;
struct ib_phys_buf {scalar_t__ addr; scalar_t__ size; } ;
struct ib_pd {int dummy; } ;
struct ib_mr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_DBG_MR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct ib_mr* FUNC1 (struct ib_pd*,struct ib_phys_buf*,int,int,scalar_t__*) ; 

__attribute__((used)) static struct ib_mr *FUNC2(struct ib_pd *pd, int acc)
{
	struct ib_phys_buf bl;
	u64 kva = 0;

	FUNC0(NES_DBG_MR, "\n");

	bl.size = (u64)0xffffffffffULL;
	bl.addr = 0;
	return FUNC1(pd, &bl, 1, acc, &kva);
}