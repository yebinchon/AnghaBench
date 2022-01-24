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

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  I8042_DATA_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int i8042_reset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static inline int FUNC2(void)
{
/*
 * On some platforms touching the i8042 data register region can do really
 * bad things. Because of this the region is always reserved on such boxes.
 */
#if defined(CONFIG_PPC)
	if (check_legacy_ioport(I8042_DATA_REG))
		return -ENODEV;
#endif
#if !defined(__sh__) && !defined(__alpha__) && !defined(__mips__)
	if (!FUNC1(I8042_DATA_REG, 16, "i8042"))
		return -EBUSY;
#endif

	i8042_reset = 1;
	return 0;
}