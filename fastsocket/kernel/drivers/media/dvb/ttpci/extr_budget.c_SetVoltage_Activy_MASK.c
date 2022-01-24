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
struct saa7146_dev {int dummy; } ;
struct budget {struct saa7146_dev* dev; } ;
typedef  int fe_sec_voltage_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTLO ; 
#define  SEC_VOLTAGE_13 130 
#define  SEC_VOLTAGE_18 129 
#define  SEC_VOLTAGE_OFF 128 
 int /*<<< orphan*/  FUNC0 (int,char*,struct budget*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (struct budget *budget, fe_sec_voltage_t voltage)
{
	struct saa7146_dev *dev=budget->dev;

	FUNC0(2, "budget: %p\n", budget);

	switch (voltage) {
		case SEC_VOLTAGE_13:
			FUNC1(dev, 1, SAA7146_GPIO_OUTHI);
			FUNC1(dev, 2, SAA7146_GPIO_OUTLO);
			break;
		case SEC_VOLTAGE_18:
			FUNC1(dev, 1, SAA7146_GPIO_OUTHI);
			FUNC1(dev, 2, SAA7146_GPIO_OUTHI);
			break;
		case SEC_VOLTAGE_OFF:
			FUNC1(dev, 1, SAA7146_GPIO_OUTLO);
			break;
		default:
			return -EINVAL;
	}

	return 0;
}