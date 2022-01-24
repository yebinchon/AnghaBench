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
struct pcap_regulator {int* voltage_table; } ;

/* Variables and functions */
 size_t FUNC0 (struct regulator_dev*) ; 
 struct pcap_regulator* vreg_table ; 

__attribute__((used)) static int FUNC1(struct regulator_dev *rdev,
							unsigned int index)
{
	struct pcap_regulator *vreg = &vreg_table[FUNC0(rdev)];

	return vreg->voltage_table[index] * 1000;
}