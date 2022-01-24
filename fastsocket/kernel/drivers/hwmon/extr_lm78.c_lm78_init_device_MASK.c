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
struct lm78_data {int /*<<< orphan*/  update_lock; void** fan_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM78_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct lm78_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lm78_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct lm78_data *data)
{
	u8 config;
	int i;

	/* Start monitoring */
	config = FUNC1(data, LM78_REG_CONFIG);
	if ((config & 0x09) != 0x01)
		FUNC2(data, LM78_REG_CONFIG,
				 (config & 0xf7) | 0x01);

	/* A few vars need to be filled upon startup */
	for (i = 0; i < 3; i++) {
		data->fan_min[i] = FUNC1(data,
					FUNC0(i));
	}

	FUNC3(&data->update_lock);
}