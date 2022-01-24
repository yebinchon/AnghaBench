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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REV_RT5592C ; 
 int /*<<< orphan*/  RT5592 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int,int) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct rt2x00_dev *rt2x00dev)
{
	FUNC5(rt2x00dev, 30);

	FUNC6(rt2x00dev, 1, 0x3F);
	FUNC6(rt2x00dev, 3, 0x08);
	FUNC6(rt2x00dev, 3, 0x08);
	FUNC6(rt2x00dev, 5, 0x10);
	FUNC6(rt2x00dev, 6, 0xE4);
	FUNC6(rt2x00dev, 7, 0x00);
	FUNC6(rt2x00dev, 14, 0x00);
	FUNC6(rt2x00dev, 15, 0x00);
	FUNC6(rt2x00dev, 16, 0x00);
	FUNC6(rt2x00dev, 18, 0x03);
	FUNC6(rt2x00dev, 19, 0x4D);
	FUNC6(rt2x00dev, 20, 0x10);
	FUNC6(rt2x00dev, 21, 0x8D);
	FUNC6(rt2x00dev, 26, 0x82);
	FUNC6(rt2x00dev, 28, 0x00);
	FUNC6(rt2x00dev, 29, 0x10);
	FUNC6(rt2x00dev, 33, 0xC0);
	FUNC6(rt2x00dev, 34, 0x07);
	FUNC6(rt2x00dev, 35, 0x12);
	FUNC6(rt2x00dev, 47, 0x0C);
	FUNC6(rt2x00dev, 53, 0x22);
	FUNC6(rt2x00dev, 63, 0x07);

	FUNC6(rt2x00dev, 2, 0x80);
	FUNC0(1);

	FUNC1(rt2x00dev);

	/* Enable DC filter */
	if (FUNC7(rt2x00dev, RT5592, REV_RT5592C))
		FUNC2(rt2x00dev, 103, 0xc0);

	FUNC4(rt2x00dev);

	if (FUNC8(rt2x00dev, RT5592, REV_RT5592C))
		FUNC6(rt2x00dev, 27, 0x03);

	FUNC3(rt2x00dev);
}