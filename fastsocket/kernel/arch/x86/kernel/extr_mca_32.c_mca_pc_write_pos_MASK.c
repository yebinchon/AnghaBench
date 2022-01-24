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
struct mca_device {int slot; unsigned char* pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCA_ADAPTER_SETUP_REG ; 
 int /*<<< orphan*/  MCA_MOTHERBOARD_SETUP_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mca_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mca_device *mca_dev, int reg,
			     unsigned char byte)
{
	unsigned long flags;

	if (reg < 0 || reg >= 8)
		return;

	FUNC2(&mca_lock, flags);

	/* Make sure motherboard setup is off */

	FUNC1(0xff, MCA_MOTHERBOARD_SETUP_REG);

	/* Read in the appropriate register */

	FUNC1(0x8|(mca_dev->slot&0xf), MCA_ADAPTER_SETUP_REG);
	FUNC1(byte, FUNC0(reg));
	FUNC1(0, MCA_ADAPTER_SETUP_REG);

	FUNC3(&mca_lock, flags);

	/* Update the global register list, while we have the byte */

	mca_dev->pos[reg] = byte;

}