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
struct wm8400 {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int WM8400_DC1_ENA ; 
 int WM8400_DCDC1 ; 
 scalar_t__ WM8400_DCDC1_CONTROL_1 ; 
 struct wm8400* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct wm8400*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *dev)
{
	struct wm8400 *wm8400 = FUNC0(dev);
	int offset = (FUNC1(dev) - WM8400_DCDC1) * 2;
	u16 val;

	val = FUNC2(wm8400, WM8400_DCDC1_CONTROL_1 + offset);
	return (val & WM8400_DC1_ENA) != 0;
}