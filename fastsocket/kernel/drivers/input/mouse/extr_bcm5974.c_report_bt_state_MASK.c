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
struct bt_data {int dummy; } ;
struct bcm5974 {int /*<<< orphan*/  input; TYPE_1__* bt_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  button; int /*<<< orphan*/  rel_y; int /*<<< orphan*/  rel_x; int /*<<< orphan*/  unknown1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bcm5974 *dev, int size)
{
	if (size != sizeof(struct bt_data))
		return -EIO;

	FUNC0(7,
		"bcm5974: button data: %x %x %x %x\n",
		dev->bt_data->unknown1, dev->bt_data->button,
		dev->bt_data->rel_x, dev->bt_data->rel_y);

	FUNC1(dev->input, BTN_LEFT, dev->bt_data->button);
	FUNC2(dev->input);

	return 0;
}