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
struct saa7146_dev {int dummy; } ;
struct budget {int /*<<< orphan*/  i2c_adap; struct saa7146_dev* dev; } ;
struct budget_av {struct budget budget; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* saa7113_tab ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct budget_av *budget_av)
{
	struct budget *budget = &budget_av->budget;
	struct saa7146_dev *saa = budget->dev;
	const u8 *data = saa7113_tab;

	FUNC4(saa, 0, SAA7146_GPIO_OUTHI);
	FUNC3(200);

	if (FUNC2(&budget->i2c_adap, 0x4a, 0x01, 0x08) != 1) {
		FUNC0(1, "saa7113 not found on KNC card\n");
		return -ENODEV;
	}

	FUNC0(1, "saa7113 detected and initializing\n");

	while (*data != 0xff) {
		FUNC2(&budget->i2c_adap, 0x4a, *data, *(data + 1));
		data += 2;
	}

	FUNC0(1, "saa7113  status=%02x\n", FUNC1(&budget->i2c_adap, 0x4a, 0x1f));

	return 0;
}