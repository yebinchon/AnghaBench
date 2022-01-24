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
struct wm8400 {int /*<<< orphan*/  dev; } ;
struct mfd_cell {char* name; struct wm8400* driver_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,struct mfd_cell*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct wm8400 *wm8400)
{
	struct mfd_cell cell = {
		.name = "wm8400-codec",
		.driver_data = wm8400,
	};

	return FUNC0(wm8400->dev, -1, &cell, 1, NULL, 0);
}