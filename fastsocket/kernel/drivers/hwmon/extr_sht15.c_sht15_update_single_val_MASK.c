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
struct sht15_data {scalar_t__ flag; TYPE_1__* pdata; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  read_work; int /*<<< orphan*/  interrupt_handled; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_data; } ;

/* Variables and functions */
 int ETIME ; 
 scalar_t__ SHT15_READING_NOTHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sht15_data*) ; 
 int FUNC10 (struct sht15_data*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC12(struct sht15_data *data,
					  int command,
					  int timeout_msecs)
{
	int ret;
	ret = FUNC10(data, command);
	if (ret)
		return ret;

	FUNC4(data->pdata->gpio_data);
	FUNC1(&data->interrupt_handled, 0);

	FUNC3(FUNC6(data->pdata->gpio_data));
	if (FUNC5(data->pdata->gpio_data) == 0) {
		FUNC2(FUNC6(data->pdata->gpio_data));
		/* Only relevant if the interrupt hasn't occured. */
		if (!FUNC0(&data->interrupt_handled))
			FUNC8(&data->read_work);
	}
	ret = FUNC11(data->wait_queue,
				 (data->flag == SHT15_READING_NOTHING),
				 FUNC7(timeout_msecs));
	if (ret == 0) {/* timeout occurred */
		FUNC2(FUNC6(data->pdata->gpio_data));
		FUNC9(data);
		return -ETIME;
	}
	return 0;
}