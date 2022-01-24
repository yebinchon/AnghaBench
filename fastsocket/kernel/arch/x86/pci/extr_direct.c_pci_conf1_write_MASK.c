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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pci_config_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(unsigned int seg, unsigned int bus,
			   unsigned int devfn, int reg, int len, u32 value)
{
	unsigned long flags;

	if ((bus > 255) || (devfn > 255) || (reg > 4095))
		return -EINVAL;

	FUNC4(&pci_config_lock, flags);

	FUNC2(FUNC0(bus, devfn, reg), 0xCF8);

	switch (len) {
	case 1:
		FUNC1((u8)value, 0xCFC + (reg & 3));
		break;
	case 2:
		FUNC3((u16)value, 0xCFC + (reg & 2));
		break;
	case 4:
		FUNC2((u32)value, 0xCFC);
		break;
	}

	FUNC5(&pci_config_lock, flags);

	return 0;
}