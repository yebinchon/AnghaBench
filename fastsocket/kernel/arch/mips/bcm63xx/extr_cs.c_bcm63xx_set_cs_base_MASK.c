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
typedef  int u32 ;

/* Variables and functions */
 int EINVAL ; 
 int MPI_CSBASE_BASE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int MPI_CSBASE_SIZE_SHIFT ; 
 int /*<<< orphan*/  bcm63xx_cs_lock ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(unsigned int cs, u32 base, unsigned int size)
{
	unsigned long flags;
	u32 val;

	if (!FUNC3(cs))
		return -EINVAL;

	/* sanity check on size */
	if (size != FUNC4(size))
		return -EINVAL;

	if (size < 8 * 1024 || size > 256 * 1024 * 1024)
		return -EINVAL;

	val = (base & MPI_CSBASE_BASE_MASK);
	/* 8k => 0 - 256M => 15 */
	val |= (FUNC2(size) - FUNC2(8 * 1024)) << MPI_CSBASE_SIZE_SHIFT;

	FUNC5(&bcm63xx_cs_lock, flags);
	FUNC1(val, FUNC0(cs));
	FUNC6(&bcm63xx_cs_lock, flags);

	return 0;
}