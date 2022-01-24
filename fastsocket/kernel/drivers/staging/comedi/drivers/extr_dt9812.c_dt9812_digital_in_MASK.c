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
typedef  int u8 ;
struct slot_dt9812 {int /*<<< orphan*/  mutex; scalar_t__ usb; } ;

/* Variables and functions */
 int ENODEV ; 
 int F020_SFR_P1 ; 
 int F020_SFR_P3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct slot_dt9812 *slot, u8 * bits)
{
	int result = -ENODEV;

	FUNC0(&slot->mutex);
	if (slot->usb) {
		u8 reg[2] = { F020_SFR_P3, F020_SFR_P1 };
		u8 value[2];

		result = FUNC1(slot->usb, 2, reg,
							value);
		if (result == 0) {
			/*
			 * bits 0-6 in F020_SFR_P3 are bits 0-6 in the digital
			 * input port bit 3 in F020_SFR_P1 is bit 7 in the
			 * digital input port
			 */
			*bits = (value[0] & 0x7f) | ((value[1] & 0x08) << 4);
			/* printk("%2.2x, %2.2x -> %2.2x\n",
			   value[0], value[1], *bits); */
		}
	}
	FUNC2(&slot->mutex);

	return result;
}