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
struct threshold_block_cross_cpu {int /*<<< orphan*/  retval; struct threshold_block* tb; } ;
struct threshold_block {int /*<<< orphan*/  cpu; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  local_error_count_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct threshold_block_cross_cpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct threshold_block *b, char *buf)
{
	struct threshold_block_cross_cpu tbcc = { .tb = b, };

	FUNC0(b->cpu, local_error_count_handler, &tbcc, 1);
	return FUNC1(buf, "%lx\n", tbcc.retval);
}