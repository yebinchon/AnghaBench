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
struct flush_icache_range_args {unsigned long start; unsigned long end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  local_r4k_flush_icache_range_ipi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct flush_icache_range_args*,int) ; 

__attribute__((used)) static void FUNC2(unsigned long start, unsigned long end)
{
	struct flush_icache_range_args args;

	args.start = start;
	args.end = end;

	FUNC1(local_r4k_flush_icache_range_ipi, &args, 1);
	FUNC0();
}