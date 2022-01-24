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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct wm8400 {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wm8400*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (struct wm8400*,int /*<<< orphan*/ ,int,int*) ; 

int FUNC4(struct wm8400 *wm8400, u8 reg, u16 mask, u16 val)
{
	u16 tmp;
	int ret;

	FUNC0(&wm8400->io_lock);

	ret = FUNC2(wm8400, reg, 1, &tmp);
	tmp = (tmp & ~mask) | val;
	if (ret == 0)
		ret = FUNC3(wm8400, reg, 1, &tmp);

	FUNC1(&wm8400->io_lock);

	return ret;
}