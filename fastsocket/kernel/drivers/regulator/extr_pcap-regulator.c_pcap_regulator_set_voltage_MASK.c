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
struct regulator_dev {int dummy; } ;
struct pcap_regulator {int n_voltages; int* voltage_table; int index; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t V1 ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC1 (struct regulator_dev*) ; 
 size_t FUNC2 (struct regulator_dev*) ; 
 struct pcap_regulator* vreg_table ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
						int min_uV, int max_uV)
{
	struct pcap_regulator *vreg = &vreg_table[FUNC2(rdev)];
	void *pcap = FUNC1(rdev);
	int uV;
	u8 i;

	/* the regulator doesn't support voltage switching */
	if (vreg->n_voltages == 1)
		return -EINVAL;

	for (i = 0; i < vreg->n_voltages; i++) {
		/* For V1 the first is not the best match */
		if (i == 0 && FUNC2(rdev) == V1)
			i = 1;
		else if (i + 1 == vreg->n_voltages && FUNC2(rdev) == V1)
			i = 0;

		uV = vreg->voltage_table[i] * 1000;
		if (min_uV <= uV && uV <= max_uV)
			return FUNC0(pcap, vreg->reg,
					(vreg->n_voltages - 1) << vreg->index,
					i << vreg->index);

		if (i == 0 && FUNC2(rdev) == V1)
			i = vreg->n_voltages - 1;
	}

	/* the requested voltage range is not supported by this regulator */
	return -EINVAL;
}