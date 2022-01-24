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
struct ovcamchip_window {int quarter; int clockdiv; } ;
struct ovcamchip {int /*<<< orphan*/  mono; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct ovcamchip* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *c, struct ovcamchip_window *win)
{
	struct ovcamchip *ov = FUNC0(c);
	int qvga = win->quarter;

	/******** QVGA-specific regs ********/
	FUNC2(c, 0x14, qvga?0x20:0x00, 0x20);
	FUNC2(c, 0x28, qvga?0x00:0x20, 0x20);
	FUNC1(c, 0x24, qvga?0x20:0x3a);
	FUNC1(c, 0x25, qvga?0x30:0x60);
	FUNC2(c, 0x2d, qvga?0x40:0x00, 0x40);
	if (!ov->mono)
		FUNC2(c, 0x67, qvga?0xf0:0x90, 0xf0);
	FUNC2(c, 0x74, qvga?0x20:0x00, 0x20);

	/******** Clock programming ********/

	FUNC1(c, 0x11, win->clockdiv);

	return 0;
}