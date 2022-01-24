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
typedef  int /*<<< orphan*/  u16 ;
struct wm8350 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  io_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wm8350*,int,int,int /*<<< orphan*/ *) ; 

int FUNC4(struct wm8350 *wm8350, int start_reg, int regs,
		       u16 *src)
{
	int ret = 0;

	FUNC1(&io_mutex);
	ret = FUNC3(wm8350, start_reg, regs, src);
	if (ret)
		FUNC0(wm8350->dev, "block write starting at R%d failed\n",
			start_reg);
	FUNC2(&io_mutex);
	return ret;
}