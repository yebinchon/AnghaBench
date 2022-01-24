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
typedef  int u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int WM8350_CS1_ISEL_MASK ; 
 int /*<<< orphan*/  WM8350_CURRENT_SINK_DRIVER_A ; 
 int /*<<< orphan*/  WM8350_CURRENT_SINK_DRIVER_B ; 
#define  WM8350_ISINK_A 129 
#define  WM8350_ISINK_B 128 
 int FUNC0 (int,int,int*) ; 
 struct wm8350* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev, int min_uA,
	int max_uA)
{
	struct wm8350 *wm8350 = FUNC1(rdev);
	int isink = FUNC2(rdev);
	u16 val, setting;
	int ret;

	ret = FUNC0(min_uA, max_uA, &setting);
	if (ret != 0)
		return ret;

	switch (isink) {
	case WM8350_ISINK_A:
		val = FUNC3(wm8350, WM8350_CURRENT_SINK_DRIVER_A) &
		    ~WM8350_CS1_ISEL_MASK;
		FUNC4(wm8350, WM8350_CURRENT_SINK_DRIVER_A,
				 val | setting);
		break;
	case WM8350_ISINK_B:
		val = FUNC3(wm8350, WM8350_CURRENT_SINK_DRIVER_B) &
		    ~WM8350_CS1_ISEL_MASK;
		FUNC4(wm8350, WM8350_CURRENT_SINK_DRIVER_B,
				 val | setting);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}