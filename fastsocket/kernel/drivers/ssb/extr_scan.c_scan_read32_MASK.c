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
typedef  int u16 ;
struct ssb_bus {int bustype; int mmio; } ;

/* Variables and functions */
#define  SSB_BUSTYPE_PCI 131 
#define  SSB_BUSTYPE_PCMCIA 130 
#define  SSB_BUSTYPE_SDIO 129 
#define  SSB_BUSTYPE_SSB 128 
 int SSB_CORE_SIZE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_bus*,int) ; 
 int FUNC3 (struct ssb_bus*,int) ; 

__attribute__((used)) static u32 FUNC4(struct ssb_bus *bus, u8 current_coreidx,
		       u16 offset)
{
	u32 lo, hi;

	switch (bus->bustype) {
	case SSB_BUSTYPE_SSB:
		offset += current_coreidx * SSB_CORE_SIZE;
		break;
	case SSB_BUSTYPE_PCI:
		break;
	case SSB_BUSTYPE_PCMCIA:
		if (offset >= 0x800) {
			FUNC2(bus, 1);
			offset -= 0x800;
		} else
			FUNC2(bus, 0);
		lo = FUNC1(bus->mmio + offset);
		hi = FUNC1(bus->mmio + offset + 2);
		return lo | (hi << 16);
	case SSB_BUSTYPE_SDIO:
		offset += current_coreidx * SSB_CORE_SIZE;
		return FUNC3(bus, offset);
	}
	return FUNC0(bus->mmio + offset);
}