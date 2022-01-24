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
struct mca_device {int pos_register; int slot; unsigned char* pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCA_ADAPTER_SETUP_REG ; 
 int /*<<< orphan*/  MCA_MOTHERBOARD_SETUP_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mca_lock ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned char FUNC5(struct mca_device *mca_dev, int reg)
{
	unsigned char byte;
	unsigned long flags;

	if (reg < 0 || reg >= 8)
		return 0;

	FUNC3(&mca_lock, flags);
	if (mca_dev->pos_register) {
		/* Disable adapter setup, enable motherboard setup */

		FUNC2(0, MCA_ADAPTER_SETUP_REG);
		FUNC2(mca_dev->pos_register, MCA_MOTHERBOARD_SETUP_REG);

		byte = FUNC1(FUNC0(reg));
		FUNC2(0xff, MCA_MOTHERBOARD_SETUP_REG);
	} else {

		/* Make sure motherboard setup is off */

		FUNC2(0xff, MCA_MOTHERBOARD_SETUP_REG);

		/* Read the appropriate register */

		FUNC2(0x8|(mca_dev->slot & 0xf), MCA_ADAPTER_SETUP_REG);
		byte = FUNC1(FUNC0(reg));
		FUNC2(0, MCA_ADAPTER_SETUP_REG);
	}
	FUNC4(&mca_lock, flags);

	mca_dev->pos[reg] = byte;

	return byte;
}