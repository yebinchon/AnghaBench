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
struct ovcamchip_window {int x; int width; int y; int height; scalar_t__ quarter; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ HWEBASE ; 
 scalar_t__ HWSBASE ; 
 scalar_t__ VWEBASE ; 
 scalar_t__ VWSBASE ; 
 int FUNC0 (struct i2c_client*,struct ovcamchip_window*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *c, struct ovcamchip_window *win)
{
	int ret, hwscale, vwscale;

	ret = FUNC0(c, win);
	if (ret < 0)
		return ret;

	if (win->quarter) {
		hwscale = 1;
		vwscale = 0;
	} else {
		hwscale = 2;
		vwscale = 1;
	}

	FUNC1(c, 0x17, HWSBASE + (win->x >> hwscale));
	FUNC1(c, 0x18, HWEBASE + ((win->x + win->width) >> hwscale));
	FUNC1(c, 0x19, VWSBASE + (win->y >> vwscale));
	FUNC1(c, 0x1a, VWEBASE + ((win->y + win->height) >> vwscale));

	return 0;
}