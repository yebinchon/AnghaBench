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
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct w83627ehf_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct w83627ehf_data*,int) ; 

__attribute__((used)) static u16 FUNC7(struct w83627ehf_data *data, u16 reg)
{
	int res, word_sized = FUNC1(reg);

	FUNC2(&data->lock);

	FUNC6(data, reg);
	FUNC4(reg & 0xff, data->addr + ADDR_REG_OFFSET);
	res = FUNC0(data->addr + DATA_REG_OFFSET);
	if (word_sized) {
		FUNC4((reg & 0xff) + 1,
		       data->addr + ADDR_REG_OFFSET);
		res = (res << 8) + FUNC0(data->addr + DATA_REG_OFFSET);
	}
	FUNC5(data, reg);

	FUNC3(&data->lock);

	return res;
}