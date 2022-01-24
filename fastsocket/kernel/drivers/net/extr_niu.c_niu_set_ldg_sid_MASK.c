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
struct niu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int NIU_LDG_MAX ; 
 int NIU_LDG_MIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SID_FUNC_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct niu *np, int ldg, int func, int vector)
{
	if ((ldg < NIU_LDG_MIN || ldg > NIU_LDG_MAX) ||
	    (func < 0 || func > 3) ||
	    (vector < 0 || vector > 0x1f))
		return -EINVAL;

	FUNC1(FUNC0(ldg), (func << SID_FUNC_SHIFT) | vector);

	return 0;
}