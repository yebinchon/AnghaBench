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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_SWITCH ; 
 int /*<<< orphan*/  GPIO_SWITCH_5 ; 
 int /*<<< orphan*/  REV_RT3390E ; 
 int /*<<< orphan*/  RT3390 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	FUNC4(rt2x00dev, 30);

	FUNC5(rt2x00dev, 0, 0xa0);
	FUNC5(rt2x00dev, 1, 0xe1);
	FUNC5(rt2x00dev, 2, 0xf1);
	FUNC5(rt2x00dev, 3, 0x62);
	FUNC5(rt2x00dev, 4, 0x40);
	FUNC5(rt2x00dev, 5, 0x8b);
	FUNC5(rt2x00dev, 6, 0x42);
	FUNC5(rt2x00dev, 7, 0x34);
	FUNC5(rt2x00dev, 8, 0x00);
	FUNC5(rt2x00dev, 9, 0xc0);
	FUNC5(rt2x00dev, 10, 0x61);
	FUNC5(rt2x00dev, 11, 0x21);
	FUNC5(rt2x00dev, 12, 0x3b);
	FUNC5(rt2x00dev, 13, 0xe0);
	FUNC5(rt2x00dev, 14, 0x90);
	FUNC5(rt2x00dev, 15, 0x53);
	FUNC5(rt2x00dev, 16, 0xe0);
	FUNC5(rt2x00dev, 17, 0x94);
	FUNC5(rt2x00dev, 18, 0x5c);
	FUNC5(rt2x00dev, 19, 0x4a);
	FUNC5(rt2x00dev, 20, 0xb2);
	FUNC5(rt2x00dev, 21, 0xf6);
	FUNC5(rt2x00dev, 22, 0x00);
	FUNC5(rt2x00dev, 23, 0x14);
	FUNC5(rt2x00dev, 24, 0x08);
	FUNC5(rt2x00dev, 25, 0x3d);
	FUNC5(rt2x00dev, 26, 0x85);
	FUNC5(rt2x00dev, 27, 0x00);
	FUNC5(rt2x00dev, 28, 0x41);
	FUNC5(rt2x00dev, 29, 0x8f);
	FUNC5(rt2x00dev, 30, 0x20);
	FUNC5(rt2x00dev, 31, 0x0f);

	FUNC2(rt2x00dev, GPIO_SWITCH, &reg);
	FUNC8(&reg, GPIO_SWITCH_5, 0);
	FUNC3(rt2x00dev, GPIO_SWITCH, reg);

	FUNC6(rt2x00dev);

	if (FUNC7(rt2x00dev, RT3390, REV_RT3390E))
		FUNC5(rt2x00dev, 27, 0x03);

	FUNC0(rt2x00dev);
	FUNC1(rt2x00dev);
}