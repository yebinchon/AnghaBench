#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct i2c_msg {int addr; int* buf; int len; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {TYPE_3__* adapter; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {TYPE_2__* algo_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_8__ {int udelay; struct cx88_core* data; } ;
struct cx88_core {char* name; scalar_t__ i2c_rc; int boardnr; TYPE_6__ i2c_client; TYPE_3__ i2c_adap; TYPE_2__ i2c_algo; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
#define  CX88_BOARD_HAUPPAUGE_HVR1300 130 
#define  CX88_BOARD_HAUPPAUGE_HVR3000 129 
#define  CX88_BOARD_HAUPPAUGE_HVR4000 128 
 int I2C_NAME_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int) ; 
 int /*<<< orphan*/  cx8800_i2c_algo_template ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ i2c_scan ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct i2c_msg*,int) ; 
 int i2c_udelay ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC10(struct cx88_core *core, struct pci_dev *pci)
{
	/* Prevents usage of invalid delay values */
	if (i2c_udelay<5)
		i2c_udelay=5;

	FUNC7(&core->i2c_algo, &cx8800_i2c_algo_template,
	       sizeof(core->i2c_algo));


	core->i2c_adap.dev.parent = &pci->dev;
	FUNC9(core->i2c_adap.name,core->name,sizeof(core->i2c_adap.name));
	core->i2c_adap.owner = THIS_MODULE;
	core->i2c_algo.udelay = i2c_udelay;
	core->i2c_algo.data = core;
	FUNC5(&core->i2c_adap, &core->v4l2_dev);
	core->i2c_adap.algo_data = &core->i2c_algo;
	core->i2c_client.adapter = &core->i2c_adap;
	FUNC9(core->i2c_client.name, "cx88xx internal", I2C_NAME_SIZE);

	FUNC0(core,1);
	FUNC1(core,1);

	core->i2c_rc = FUNC4(&core->i2c_adap);
	if (0 == core->i2c_rc) {
		static u8 tuner_data[] =
			{ 0x0b, 0xdc, 0x86, 0x52 };
		static struct i2c_msg tuner_msg =
			{ .flags = 0, .addr = 0xc2 >> 1, .buf = tuner_data, .len = 4 };

		FUNC3(1, "i2c register ok\n");
		switch( core->boardnr ) {
			case CX88_BOARD_HAUPPAUGE_HVR1300:
			case CX88_BOARD_HAUPPAUGE_HVR3000:
			case CX88_BOARD_HAUPPAUGE_HVR4000:
				FUNC8("%s: i2c init: enabling analog demod on HVR1300/3000/4000 tuner\n",
					core->name);
				FUNC6(core->i2c_client.adapter, &tuner_msg, 1);
				break;
			default:
				break;
		}
		if (i2c_scan)
			FUNC2(core->name,&core->i2c_client);
	} else
		FUNC8("%s: i2c register FAILED\n", core->name);

	return core->i2c_rc;
}