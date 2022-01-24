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
struct resource {unsigned long start; unsigned long end; } ;

/* Variables and functions */
 struct resource* gpmc_cs_mem ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  gpmc_mem_lock ; 
 int /*<<< orphan*/  gpmc_mem_root ; 
 int FUNC1 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int cs, unsigned long base, unsigned long size)
{
	struct resource	*res = &gpmc_cs_mem[cs];
	int r;

	size = FUNC0(size);
	FUNC2(&gpmc_mem_lock);
	res->start = base;
	res->end = base + size - 1;
	r = FUNC1(&gpmc_mem_root, res);
	FUNC3(&gpmc_mem_lock);

	return r;
}