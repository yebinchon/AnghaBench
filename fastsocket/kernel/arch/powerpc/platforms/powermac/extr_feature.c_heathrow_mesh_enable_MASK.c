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
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  HEATHROW_FCR ; 
 int /*<<< orphan*/  HEATHROW_MBCR ; 
 int HRW_MESH_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct macio_chip* FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macio_unknown ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static long FUNC7(struct device_node *node, long param,
				 long value)
{
	struct macio_chip*	macio;
	unsigned long		flags;

	macio = FUNC5(node, macio_unknown);
	if (!macio)
		return -ENODEV;
	FUNC0(flags);
	/* Set clear mesh cell enable */
	if (value)
		FUNC2(HEATHROW_FCR, HRW_MESH_ENABLE);
	else
		FUNC1(HEATHROW_FCR, HRW_MESH_ENABLE);
	(void)FUNC3(HEATHROW_FCR);
	FUNC6(10);
	/* Set/Clear termination power */
	if (value)
		FUNC1(HEATHROW_MBCR, 0x04000000);
	else
		FUNC2(HEATHROW_MBCR, 0x04000000);
	(void)FUNC3(HEATHROW_MBCR);
	FUNC6(10);
	FUNC4(flags);

	return 0;
}