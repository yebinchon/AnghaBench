#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;

/* Variables and functions */
#define  RT3070 137 
#define  RT3071 136 
#define  RT3090 135 
#define  RT3290 134 
#define  RT3352 133 
#define  RT3390 132 
#define  RT3572 131 
#define  RT5390 130 
#define  RT5392 129 
#define  RT5592 128 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC9 (struct rt2x00_dev*) ; 

__attribute__((used)) static void FUNC10(struct rt2x00_dev *rt2x00dev)
{
	if (FUNC9(rt2x00dev)) {
		FUNC0(rt2x00dev);
		return;
	}

	switch (rt2x00dev->chip.rt) {
	case RT3070:
	case RT3071:
	case RT3090:
		FUNC1(rt2x00dev);
		break;
	case RT3290:
		FUNC2(rt2x00dev);
		break;
	case RT3352:
		FUNC3(rt2x00dev);
		break;
	case RT3390:
		FUNC4(rt2x00dev);
		break;
	case RT3572:
		FUNC5(rt2x00dev);
		break;
	case RT5390:
		FUNC6(rt2x00dev);
		break;
	case RT5392:
		FUNC7(rt2x00dev);
		break;
	case RT5592:
		FUNC8(rt2x00dev);
		break;
	}
}