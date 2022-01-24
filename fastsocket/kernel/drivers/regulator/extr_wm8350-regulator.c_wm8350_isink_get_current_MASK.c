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
typedef  size_t u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 size_t WM8350_CS1_ISEL_MASK ; 
 int /*<<< orphan*/  WM8350_CURRENT_SINK_DRIVER_A ; 
 int /*<<< orphan*/  WM8350_CURRENT_SINK_DRIVER_B ; 
#define  WM8350_ISINK_A 129 
#define  WM8350_ISINK_B 128 
 int* isink_cur ; 
 struct wm8350* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 size_t FUNC2 (struct wm8350*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct wm8350 *wm8350 = FUNC0(rdev);
	int isink = FUNC1(rdev);
	u16 val;

	switch (isink) {
	case WM8350_ISINK_A:
		val = FUNC2(wm8350, WM8350_CURRENT_SINK_DRIVER_A) &
		    WM8350_CS1_ISEL_MASK;
		break;
	case WM8350_ISINK_B:
		val = FUNC2(wm8350, WM8350_CURRENT_SINK_DRIVER_B) &
		    WM8350_CS1_ISEL_MASK;
		break;
	default:
		return 0;
	}

	return (isink_cur[val] + 50) / 100;
}