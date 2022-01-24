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
typedef  int /*<<< orphan*/  u32 ;
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct macio_chip* FUNC5 (struct device_node*,int) ; 

__attribute__((used)) static inline int FUNC6(struct device_node *node, int type,
				       int reg, u32 mask, int value)
{
	struct macio_chip*	macio;
	unsigned long		flags;

	macio = FUNC5(node, type);
	if (!macio)
		return -ENODEV;
	FUNC0(flags);
	if (value)
		FUNC2(reg, mask);
	else
		FUNC1(reg, mask);
	(void)FUNC3(reg);
	FUNC4(flags);

	return 0;
}