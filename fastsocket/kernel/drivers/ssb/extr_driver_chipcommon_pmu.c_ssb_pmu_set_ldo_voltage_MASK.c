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
struct ssb_chipcommon {TYPE_1__* dev; } ;
struct ssb_bus {int chip_id; } ;
typedef  enum ssb_pmu_ldo_volt_id { ____Placeholder_ssb_pmu_ldo_volt_id } ssb_pmu_ldo_volt_id ;
struct TYPE_2__ {struct ssb_bus* bus; } ;

/* Variables and functions */
#define  LDO_PAREF 131 
#define  LDO_VOLT1 130 
#define  LDO_VOLT2 129 
#define  LDO_VOLT3 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_chipcommon*,int,int,int) ; 

void FUNC2(struct ssb_chipcommon *cc,
			     enum ssb_pmu_ldo_volt_id id, u32 voltage)
{
	struct ssb_bus *bus = cc->dev->bus;
	u32 addr, shift, mask;

	switch (bus->chip_id) {
	case 0x4328:
	case 0x5354:
		switch (id) {
		case LDO_VOLT1:
			addr = 2;
			shift = 25;
			mask = 0xF;
			break;
		case LDO_VOLT2:
			addr = 3;
			shift = 1;
			mask = 0xF;
			break;
		case LDO_VOLT3:
			addr = 3;
			shift = 9;
			mask = 0xF;
			break;
		case LDO_PAREF:
			addr = 3;
			shift = 17;
			mask = 0x3F;
			break;
		default:
			FUNC0(1);
			return;
		}
		break;
	case 0x4312:
		if (FUNC0(id != LDO_PAREF))
			return;
		addr = 0;
		shift = 21;
		mask = 0x3F;
		break;
	default:
		return;
	}

	FUNC1(cc, addr, ~(mask << shift),
				  (voltage & mask) << shift);
}