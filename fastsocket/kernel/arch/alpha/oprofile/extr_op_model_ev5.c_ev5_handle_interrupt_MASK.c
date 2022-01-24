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
struct pt_regs {int dummy; } ;
struct op_counter_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,unsigned long) ; 

__attribute__((used)) static void
FUNC1(unsigned long which, struct pt_regs *regs,
		     struct op_counter_config *ctr)
{
	/* Record the sample.  */
	FUNC0(regs, which);
}