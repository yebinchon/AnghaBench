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
typedef  scalar_t__ u8 ;
struct regulator_dev {int dummy; } ;
struct pcf50633 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCF50633_NUM_REGULATORS ; 
 int /*<<< orphan*/  PCF50633_REGULATOR_ON ; 
 int FUNC0 (struct pcf50633*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* pcf50633_regulator_registers ; 
 struct pcf50633* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct pcf50633 *pcf = FUNC1(rdev);
	int regulator_id;
	u8 regnr;

	regulator_id = FUNC2(rdev);
	if (regulator_id >= PCF50633_NUM_REGULATORS)
		return -EINVAL;

	/* the *ENA register is always one after the *OUT register */
	regnr = pcf50633_regulator_registers[regulator_id] + 1;

	return FUNC0(pcf, regnr,
					PCF50633_REGULATOR_ON, 0);
}