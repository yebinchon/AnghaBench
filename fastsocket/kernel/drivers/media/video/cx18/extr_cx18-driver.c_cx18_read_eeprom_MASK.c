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
typedef  int /*<<< orphan*/  u8 ;
struct tveeprom {int addr; int model; int /*<<< orphan*/ * adapter; int /*<<< orphan*/  name; } ;
struct i2c_client {int addr; int model; int /*<<< orphan*/ * adapter; int /*<<< orphan*/  name; } ;
struct cx18 {TYPE_1__* card; int /*<<< orphan*/ * i2c_adap; } ;
typedef  int /*<<< orphan*/  eedata ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
#define  CX18_CARD_GOTVIEW_PCI_DVD3 132 
#define  CX18_CARD_HVR_1600_ESMT 131 
#define  CX18_CARD_HVR_1600_S5H1411 130 
#define  CX18_CARD_HVR_1600_SAMSUNG 129 
#define  CX18_CARD_YUAN_MPC718 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tveeprom*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tveeprom*,struct tveeprom*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tveeprom*,int /*<<< orphan*/ *,int) ; 

void FUNC6(struct cx18 *cx, struct tveeprom *tv)
{
	struct i2c_client c;
	u8 eedata[256];

	FUNC2(&c, 0, sizeof(c));
	FUNC3(c.name, "cx18 tveeprom tmp", sizeof(c.name));
	c.adapter = &cx->i2c_adap[0];
	c.addr = 0xA0 >> 1;

	FUNC2(tv, 0, sizeof(*tv));
	if (FUNC5(&c, eedata, sizeof(eedata)))
		return;

	switch (cx->card->type) {
	case CX18_CARD_HVR_1600_ESMT:
	case CX18_CARD_HVR_1600_SAMSUNG:
	case CX18_CARD_HVR_1600_S5H1411:
		FUNC4(&c, tv, eedata);
		break;
	case CX18_CARD_YUAN_MPC718:
	case CX18_CARD_GOTVIEW_PCI_DVD3:
		tv->model = 0x718;
		FUNC1(cx, eedata, sizeof(eedata));
		FUNC0("eeprom PCI ID: %02x%02x:%02x%02x\n",
			  eedata[2], eedata[1], eedata[4], eedata[3]);
		break;
	default:
		tv->model = 0xffffffff;
		FUNC1(cx, eedata, sizeof(eedata));
		break;
	}
}