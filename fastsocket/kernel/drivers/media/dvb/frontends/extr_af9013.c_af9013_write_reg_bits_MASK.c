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
typedef  int /*<<< orphan*/  u16 ;
struct af9013_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct af9013_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct af9013_state*,int /*<<< orphan*/ ,int) ; 
 int* regmask ; 

__attribute__((used)) static int FUNC2(struct af9013_state *state, u16 reg, u8 pos,
	u8 len, u8 val)
{
	int ret;
	u8 tmp, mask;

	ret = FUNC0(state, reg, &tmp);
	if (ret)
		return ret;

	mask = regmask[len - 1] << pos;
	tmp = (tmp & ~mask) | ((val << pos) & mask);

	return FUNC1(state, reg, tmp);
}