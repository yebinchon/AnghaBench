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
typedef  int /*<<< orphan*/  u8 ;
struct slot_dt9812 {int /*<<< orphan*/  mutex; TYPE_1__* usb; } ;
struct TYPE_2__ {int /*<<< orphan*/  digital_out_shadow; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  F020_SFR_P2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct slot_dt9812 *slot, u8 bits)
{
	int result = -ENODEV;

	FUNC0(&slot->mutex);
	if (slot->usb) {
		u8 reg[1];
		u8 value[1];

		reg[0] = F020_SFR_P2;
		value[0] = bits;
		result = FUNC1(slot->usb, 1, reg,
							 value);
		slot->usb->digital_out_shadow = bits;
	}
	FUNC2(&slot->mutex);
	return result;
}