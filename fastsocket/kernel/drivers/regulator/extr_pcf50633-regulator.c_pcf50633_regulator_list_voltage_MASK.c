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
struct regulator_dev {int dummy; } ;
struct pcf50633 {int dummy; } ;

/* Variables and functions */
#define  PCF50633_REGULATOR_AUTO 129 
#define  PCF50633_REGULATOR_HCLDO 128 
 int FUNC0 (int,unsigned int) ; 
 struct pcf50633* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
						unsigned int index)
{
	struct pcf50633 *pcf;
	int regulator_id;

	pcf = FUNC1(rdev);

	regulator_id = FUNC2(rdev);

	switch (regulator_id) {
	case PCF50633_REGULATOR_AUTO:
		index += 0x2f;
		break;
	case PCF50633_REGULATOR_HCLDO:
		index += 0x01;
		break;
	default:
		break;
	}

	return FUNC0(regulator_id, index);
}