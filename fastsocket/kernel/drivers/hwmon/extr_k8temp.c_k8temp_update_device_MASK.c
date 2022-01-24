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
struct pci_dev {int dummy; } ;
struct k8temp_data {int valid; int sensorsp; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/ ** temp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  REG_TEMP ; 
 int SEL_CORE ; 
 int SEL_PLACE ; 
 struct k8temp_data* FUNC0 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct pci_dev* FUNC7 (struct device*) ; 

__attribute__((used)) static struct k8temp_data *FUNC8(struct device *dev)
{
	struct k8temp_data *data = FUNC0(dev);
	struct pci_dev *pdev = FUNC7(dev);
	u8 tmp;

	FUNC1(&data->update_lock);

	if (!data->valid
	    || FUNC6(jiffies, data->last_updated + HZ)) {
		FUNC3(pdev, REG_TEMP, &tmp);
		tmp &= ~(SEL_PLACE | SEL_CORE);		/* Select sensor 0, core0 */
		FUNC5(pdev, REG_TEMP, tmp);
		FUNC4(pdev, REG_TEMP, &data->temp[0][0]);

		if (data->sensorsp & SEL_PLACE) {
			tmp |= SEL_PLACE;	/* Select sensor 1, core0 */
			FUNC5(pdev, REG_TEMP, tmp);
			FUNC4(pdev, REG_TEMP,
					      &data->temp[0][1]);
		}

		if (data->sensorsp & SEL_CORE) {
			tmp &= ~SEL_PLACE;	/* Select sensor 0, core1 */
			tmp |= SEL_CORE;
			FUNC5(pdev, REG_TEMP, tmp);
			FUNC4(pdev, REG_TEMP,
					      &data->temp[1][0]);

			if (data->sensorsp & SEL_PLACE) {
				tmp |= SEL_PLACE;	/* Select sensor 1, core1 */
				FUNC5(pdev, REG_TEMP, tmp);
				FUNC4(pdev, REG_TEMP,
						      &data->temp[1][1]);
			}
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC2(&data->update_lock);
	return data;
}