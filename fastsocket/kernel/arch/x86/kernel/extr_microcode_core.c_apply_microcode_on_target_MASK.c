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
struct apply_microcode_ctx {int err; } ;

/* Variables and functions */
 int /*<<< orphan*/  apply_microcode_local ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct apply_microcode_ctx*,int) ; 

__attribute__((used)) static int FUNC1(int cpu)
{
	struct apply_microcode_ctx ctx = { .err = 0 };
	int ret;

	ret = FUNC0(cpu, apply_microcode_local, &ctx, 1);
	if (!ret)
		ret = ctx.err;

	return ret;
}