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
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wl1271*) ; 
 int FUNC1 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct wl1271 *wl, unsigned long value,
			    void *arg)
{
	int ret;
	int (*chip_op) (struct wl1271 *wl);

	if (!arg) {
		FUNC2("debugfs chip_op_handler with no callback");
		return;
	}

	ret = FUNC1(wl);
	if (ret < 0)
		return;

	chip_op = arg;
	chip_op(wl);

	FUNC0(wl);
}