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
struct ptp_clock_info {scalar_t__ n_ext_ts; scalar_t__ n_per_out; scalar_t__ pps; } ;
struct ptp_clock {struct ptp_clock_info* info; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_extts_enable ; 
 int /*<<< orphan*/  dev_attr_fifo ; 
 int /*<<< orphan*/  dev_attr_period ; 
 int /*<<< orphan*/  dev_attr_pps_enable ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC2(struct ptp_clock *ptp)
{
	struct device *dev = ptp->dev;
	struct ptp_clock_info *info = ptp->info;
	int err;

	if (info->n_ext_ts) {
		err = FUNC0(dev, &dev_attr_extts_enable);
		if (err)
			goto out1;
		err = FUNC0(dev, &dev_attr_fifo);
		if (err)
			goto out2;
	}
	if (info->n_per_out) {
		err = FUNC0(dev, &dev_attr_period);
		if (err)
			goto out3;
	}
	if (info->pps) {
		err = FUNC0(dev, &dev_attr_pps_enable);
		if (err)
			goto out4;
	}
	return 0;
out4:
	if (info->n_per_out)
		FUNC1(dev, &dev_attr_period);
out3:
	if (info->n_ext_ts)
		FUNC1(dev, &dev_attr_fifo);
out2:
	if (info->n_ext_ts)
		FUNC1(dev, &dev_attr_extts_enable);
out1:
	return err;
}