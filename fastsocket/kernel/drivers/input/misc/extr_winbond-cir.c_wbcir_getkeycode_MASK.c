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
struct wbcir_data {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct wbcir_data* FUNC0 (struct input_dev*) ; 
 scalar_t__ FUNC1 (struct wbcir_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct input_dev *dev, int scancode, int *keycode)
{
	struct wbcir_data *data = FUNC0(dev);

	*keycode = (int)FUNC1(data, (u32)scancode);
	return 0;
}