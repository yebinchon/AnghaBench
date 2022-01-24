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
struct wm831x {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wm831x*,unsigned short,int,int /*<<< orphan*/ *) ; 

int FUNC3(struct wm831x *wm831x, unsigned short reg,
		     int count, u16 *buf)
{
	int ret;

	FUNC0(&wm831x->io_lock);

	ret = FUNC2(wm831x, reg, count * 2, buf);

	FUNC1(&wm831x->io_lock);

	return ret;
}