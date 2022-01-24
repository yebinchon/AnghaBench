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
struct ps2dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 unsigned char TP_COMMAND ; 
 unsigned char TP_TOGGLE ; 
 scalar_t__ FUNC1 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ps2dev *ps2dev, unsigned char loc, unsigned char mask)
{
	/* Bad things will happen if the loc param isn't in this range */
	if (loc < 0x20 || loc >= 0x2F)
		return -1;

	if (FUNC1(ps2dev, NULL, FUNC0(0, 0, TP_COMMAND)) ||
	    FUNC1(ps2dev, NULL, FUNC0(0, 0, TP_TOGGLE)) ||
	    FUNC1(ps2dev, NULL, FUNC0(0, 0, loc)) ||
	    FUNC1(ps2dev, NULL, FUNC0(0, 0, mask))) {
		return -1;
	}

	return 0;
}