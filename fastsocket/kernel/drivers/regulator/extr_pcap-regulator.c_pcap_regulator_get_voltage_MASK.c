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
typedef  int u32 ;
struct regulator_dev {int dummy; } ;
struct pcap_regulator {int n_voltages; int* voltage_table; int index; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int*) ; 
 void* FUNC1 (struct regulator_dev*) ; 
 size_t FUNC2 (struct regulator_dev*) ; 
 struct pcap_regulator* vreg_table ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct pcap_regulator *vreg = &vreg_table[FUNC2(rdev)];
	void *pcap = FUNC1(rdev);
	u32 tmp;
	int mV;

	if (vreg->n_voltages == 1)
		return vreg->voltage_table[0] * 1000;

	FUNC0(pcap, vreg->reg, &tmp);
	tmp = ((tmp >> vreg->index) & (vreg->n_voltages - 1));
	mV = vreg->voltage_table[tmp];

	return mV * 1000;
}