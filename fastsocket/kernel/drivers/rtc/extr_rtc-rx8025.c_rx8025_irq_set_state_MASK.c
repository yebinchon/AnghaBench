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
struct rx8025_data {int ctrl1; int /*<<< orphan*/  client; } ;
struct i2c_client {scalar_t__ irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int RX8025_BIT_CTRL1_CT ; 
 int RX8025_BIT_CTRL1_CT_1HZ ; 
 int /*<<< orphan*/  RX8025_REG_CTRL1 ; 
 struct rx8025_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, int enabled)
{
	struct i2c_client *client = FUNC2(dev);
	struct rx8025_data *rx8025 = FUNC0(client);
	int ctrl1;
	int err;

	if (client->irq <= 0)
		return -ENXIO;

	ctrl1 = rx8025->ctrl1 & ~RX8025_BIT_CTRL1_CT;
	if (enabled)
		ctrl1 |= RX8025_BIT_CTRL1_CT_1HZ;
	if (ctrl1 != rx8025->ctrl1) {
		rx8025->ctrl1 = ctrl1;
		err = FUNC1(rx8025->client, RX8025_REG_CTRL1,
				       rx8025->ctrl1);
		if (err)
			return err;
	}

	return 0;
}