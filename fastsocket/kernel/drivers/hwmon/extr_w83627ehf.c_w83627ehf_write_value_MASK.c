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
typedef  int u16 ;
struct w83627ehf_data {int /*<<< orphan*/  lock; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ ADDR_REG_OFFSET ; 
 scalar_t__ DATA_REG_OFFSET ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct w83627ehf_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct w83627ehf_data*,int) ; 

__attribute__((used)) static int FUNC6(struct w83627ehf_data *data, u16 reg, u16 value)
{
	int word_sized = FUNC0(reg);

	FUNC1(&data->lock);

	FUNC5(data, reg);
	FUNC3(reg & 0xff, data->addr + ADDR_REG_OFFSET);
	if (word_sized) {
		FUNC3(value >> 8, data->addr + DATA_REG_OFFSET);
		FUNC3((reg & 0xff) + 1,
		       data->addr + ADDR_REG_OFFSET);
	}
	FUNC3(value & 0xff, data->addr + DATA_REG_OFFSET);
	FUNC4(data, reg);

	FUNC2(&data->lock);
	return 0;
}