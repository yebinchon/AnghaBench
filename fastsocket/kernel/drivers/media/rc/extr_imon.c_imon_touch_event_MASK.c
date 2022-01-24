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
struct imon_context {unsigned char touch_x; int touch_y; int /*<<< orphan*/  touch; int /*<<< orphan*/  ttimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 scalar_t__ TOUCH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct imon_context *ictx, unsigned char *buf)
{
	FUNC3(&ictx->ttimer, jiffies + TOUCH_TIMEOUT);
	ictx->touch_x = (buf[0] << 4) | (buf[1] >> 4);
	ictx->touch_y = 0xfff - ((buf[2] << 4) | (buf[1] & 0xf));
	FUNC0(ictx->touch, ABS_X, ictx->touch_x);
	FUNC0(ictx->touch, ABS_Y, ictx->touch_y);
	FUNC1(ictx->touch, BTN_TOUCH, 0x01);
	FUNC2(ictx->touch);
}