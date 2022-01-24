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
typedef  int /*<<< orphan*/  u8 ;
struct regulator_dev {int dummy; } ;
struct pcf50633 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCF50633_NUM_REGULATORS ; 
 int /*<<< orphan*/  FUNC0 (struct pcf50633*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pcf50633_regulator_registers ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct pcf50633* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct pcf50633 *pcf;
	int regulator_id;
	u8 volt_bits, regnr;

	pcf = FUNC2(rdev);

	regulator_id = FUNC3(rdev);
	if (regulator_id >= PCF50633_NUM_REGULATORS)
		return -EINVAL;

	regnr = pcf50633_regulator_registers[regulator_id];

	volt_bits = FUNC0(pcf, regnr);

	return FUNC1(regulator_id, volt_bits);
}