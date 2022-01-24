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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	unsigned bus, slot, func;

	if (!FUNC1())
		return;

	for (bus = 0; bus < 256; bus++) {
		for (slot = 0; slot < 32; slot++) {
			for (func = 0; func < 8; func++) {
				u32 class;
				u8 type;

				class = FUNC2(bus, slot, func,
							PCI_CLASS_REVISION);
				if (class == 0xffffffff)
					continue;

				FUNC0(bus, slot, func);

				if (func == 0) {
					type = FUNC3(bus, slot,
								    func,
							       PCI_HEADER_TYPE);
					if (!(type & 0x80))
						break;
				}
			}
		}
	}
}