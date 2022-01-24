#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sht15_data {TYPE_1__* pdata; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_sck; int /*<<< orphan*/  gpio_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SHT15_TSCKH ; 
 int /*<<< orphan*/  SHT15_TSCKL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sht15_data*) ; 

__attribute__((used)) static int FUNC6(struct sht15_data *data)
{
	FUNC1(data->pdata->gpio_data);
	FUNC3(data->pdata->gpio_sck, 1);
	FUNC4(SHT15_TSCKH);
	if (FUNC2(data->pdata->gpio_data)) {
		FUNC3(data->pdata->gpio_sck, 0);
		FUNC0(data->dev, "Command not acknowledged\n");
		FUNC5(data);
		return -EIO;
	}
	FUNC3(data->pdata->gpio_sck, 0);
	FUNC4(SHT15_TSCKL);
	return 0;
}