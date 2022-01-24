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
struct sht15_data {TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_sck; int /*<<< orphan*/  gpio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHT15_TSCKH ; 
 int /*<<< orphan*/  SHT15_TSCKL ; 
 int /*<<< orphan*/  SHT15_TSU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct sht15_data *data, int val)
{

	FUNC0(data->pdata->gpio_data, val);
	FUNC1(SHT15_TSU);
	FUNC0(data->pdata->gpio_sck, 1);
	FUNC1(SHT15_TSCKH);
	FUNC0(data->pdata->gpio_sck, 0);
	FUNC1(SHT15_TSCKL); /* clock low time */
}