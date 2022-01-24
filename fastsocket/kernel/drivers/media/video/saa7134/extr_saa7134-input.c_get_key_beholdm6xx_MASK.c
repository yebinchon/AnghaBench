#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct saa7134_dev {int dummy; } ;
struct IR_i2c {TYPE_2__* c; } ;
struct TYPE_4__ {int addr; TYPE_1__* adapter; } ;
struct TYPE_3__ {struct saa7134_dev* algo_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPMODE3 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPRESCAN ; 
 int SAA7134_GPIO_GPSTATUS0 ; 
 int FUNC0 (TYPE_2__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
	unsigned char data[12];
	u32 gpio;

	struct saa7134_dev *dev = ir->c->adapter->algo_data;

	/* rising SAA7134_GPIO_GPRESCAN reads the status */
	FUNC2(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	FUNC4(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);

	gpio = FUNC3(SAA7134_GPIO_GPSTATUS0 >> 2);

	if (0x400000 & ~gpio)
		return 0; /* No button press */

	ir->c->addr = 0x5a >> 1;

	if (12 != FUNC0(ir->c, data, 12)) {
		FUNC1("read error\n");
		return -EIO;
	}

	if (data[9] != (unsigned char)(~data[8]))
		return 0;

	*ir_raw = ((data[10] << 16) | (data[11] << 8) | (data[9] << 0));
	*ir_key = *ir_raw;

	return 1;
}