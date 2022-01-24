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
struct ixp2000_uengine_code {int /*<<< orphan*/  num_insns; int /*<<< orphan*/  insns; int /*<<< orphan*/  uengine_parameters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixp2000_uengine_code*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ixp2000_uengine_mask ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,struct ixp2000_uengine_code*) ; 

int FUNC6(int uengine, struct ixp2000_uengine_code *c)
{
	int ctx;

	if (!FUNC0(c))
		return 1;

	if (!(ixp2000_uengine_mask & (1 << uengine)))
		return 1;

	FUNC3(1 << uengine);
	FUNC4(uengine, c->uengine_parameters);
	if (FUNC5(uengine, c))
		return 1;
	FUNC2(uengine, c->insns, c->num_insns);

	for (ctx = 0; ctx < 8; ctx++)
		FUNC1(uengine, ctx, 0);

	return 0;
}