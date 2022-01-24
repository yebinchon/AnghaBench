#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct fritzcard {int type; scalar_t__ addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; TYPE_1__ isac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
#define  AVM_FRITZ_PCI 129 
#define  AVM_FRITZ_PCIV2 128 
 int /*<<< orphan*/  AVM_HDLC_1 ; 
 scalar_t__ AVM_HDLC_STATUS_1 ; 
 scalar_t__ CHIP_INDEX ; 
 scalar_t__ CHIP_WINDOW ; 
 int DEBUG_HW ; 
 int EIO ; 
 int ENODEV ; 
 scalar_t__ HDLC_STATUS ; 
 int /*<<< orphan*/  IPAC_TYPE_ISAC ; 
 int /*<<< orphan*/  IPAC_TYPE_ISACX ; 
 int /*<<< orphan*/  ISAC ; 
 int /*<<< orphan*/  V1 ; 
 int /*<<< orphan*/  V2 ; 
 int debug ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 

int
FUNC7(struct fritzcard *fc)
{
	u32 val, ver;

	if (!FUNC6(fc->addr, 32, fc->name)) {
		FUNC3("%s: AVM config port %x-%x already in use\n",
			fc->name, fc->addr, fc->addr + 31);
		return -EIO;
	}
	switch (fc->type) {
	case AVM_FRITZ_PCI:
		val = FUNC1(fc->addr);
		FUNC2(AVM_HDLC_1, fc->addr + CHIP_INDEX);
		ver = FUNC1(fc->addr + CHIP_WINDOW + HDLC_STATUS) >> 24;
		if (debug & DEBUG_HW) {
			FUNC4("%s: PCI stat %#x\n", fc->name, val);
			FUNC4("%s: PCI Class %X Rev %d\n", fc->name,
				val & 0xff, (val >> 8) & 0xff);
			FUNC4("%s: HDLC version %x\n", fc->name, ver & 0xf);
		}
		FUNC0(V1, ISAC, fc->isac);
		fc->isac.type = IPAC_TYPE_ISAC;
		break;
	case AVM_FRITZ_PCIV2:
		val = FUNC1(fc->addr);
		ver = FUNC1(fc->addr + AVM_HDLC_STATUS_1) >> 24;
		if (debug & DEBUG_HW) {
			FUNC4("%s: PCI V2 stat %#x\n", fc->name, val);
			FUNC4("%s: PCI V2 Class %X Rev %d\n", fc->name,
				val & 0xff, (val>>8) & 0xff);
			FUNC4("%s: HDLC version %x\n", fc->name, ver & 0xf);
		}
		FUNC0(V2, ISAC, fc->isac);
		fc->isac.type = IPAC_TYPE_ISACX;
		break;
	default:
		FUNC5(fc->addr, 32);
		FUNC3("%s: AVM unknown type %d\n", fc->name, fc->type);
		return -ENODEV;
	}
	FUNC4("%s: %s config irq:%d base:0x%X\n", fc->name,
		(fc->type == AVM_FRITZ_PCI) ? "AVM Fritz!CARD PCI" :
		"AVM Fritz!CARD PCIv2", fc->irq, fc->addr);
	return 0;
}