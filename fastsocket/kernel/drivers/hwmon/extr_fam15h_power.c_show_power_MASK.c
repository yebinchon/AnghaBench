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
typedef  int u64 ;
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;
struct fam15h_power_data {int base_tdp; int tdp_to_watts; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_TDP_LIMIT3 ; 
 int /*<<< orphan*/  REG_TDP_RUNNING_AVERAGE ; 
 struct fam15h_power_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 
 struct pci_dev* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			  struct device_attribute *attr, char *buf)
{
	u32 val, tdp_limit, running_avg_range;
	s32 running_avg_capture;
	u64 curr_pwr_watts;
	struct pci_dev *f4 = FUNC6(dev);
	struct fam15h_power_data *data = FUNC2(dev);

	FUNC3(f4->bus, FUNC0(FUNC1(f4->devfn), 5),
				  REG_TDP_RUNNING_AVERAGE, &val);
	running_avg_capture = (val >> 4) & 0x3fffff;
	running_avg_capture = FUNC4(running_avg_capture, 21);
	running_avg_range = (val & 0xf) + 1;

	FUNC3(f4->bus, FUNC0(FUNC1(f4->devfn), 5),
				  REG_TDP_LIMIT3, &val);

	tdp_limit = val >> 16;
	curr_pwr_watts = (tdp_limit + data->base_tdp) << running_avg_range;
	curr_pwr_watts -= running_avg_capture;
	curr_pwr_watts *= data->tdp_to_watts;

	/*
	 * Convert to microWatt
	 *
	 * power is in Watt provided as fixed point integer with
	 * scaling factor 1/(2^16).  For conversion we use
	 * (10^6)/(2^16) = 15625/(2^10)
	 */
	curr_pwr_watts = (curr_pwr_watts * 15625) >> (10 + running_avg_range);
	return FUNC5(buf, "%u\n", (unsigned int) curr_pwr_watts);
}