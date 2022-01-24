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

u16 FUNC4(struct wm8350 *wm8350, int reg)
{
	u16 data;
	int err;

	FUNC1(&io_mutex);
	err = FUNC3(wm8350, reg, 1, &data);
	if (err)
		FUNC0(wm8350->dev, "read from reg R%d failed\n", reg);

	FUNC2(&io_mutex);
	return data;
}