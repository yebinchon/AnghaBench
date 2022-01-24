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
typedef  int u16 ;
struct slot_dt9812 {int /*<<< orphan*/  mutex; TYPE_1__* usb; } ;
struct dt9812_rmw_byte {int and_mask; int or_value; int /*<<< orphan*/  address; } ;
struct TYPE_2__ {int* analog_out_shadow; } ;

/* Variables and functions */
 int ENODEV ; 
 void* F020_MASK_DACxCN_DACxEN ; 
 int /*<<< orphan*/  F020_SFR_DAC0CN ; 
 int /*<<< orphan*/  F020_SFR_DAC0H ; 
 int /*<<< orphan*/  F020_SFR_DAC0L ; 
 int /*<<< orphan*/  F020_SFR_DAC1CN ; 
 int /*<<< orphan*/  F020_SFR_DAC1H ; 
 int /*<<< orphan*/  F020_SFR_DAC1L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int,struct dt9812_rmw_byte*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct slot_dt9812 *slot, int channel, u16 value)
{
	int result = -ENODEV;

	FUNC0(&slot->mutex);
	if (slot->usb) {
		struct dt9812_rmw_byte rmw[3];

		switch (channel) {
		case 0:
			/* 1. Set DAC mode */
			rmw[0].address = F020_SFR_DAC0CN;
			rmw[0].and_mask = 0xff;
			rmw[0].or_value = F020_MASK_DACxCN_DACxEN;

			/* 2 load low byte of DAC value first */
			rmw[1].address = F020_SFR_DAC0L;
			rmw[1].and_mask = 0xff;
			rmw[1].or_value = value & 0xff;

			/* 3 load high byte of DAC value next to latch the
			   12-bit value */
			rmw[2].address = F020_SFR_DAC0H;
			rmw[2].and_mask = 0xff;
			rmw[2].or_value = (value >> 8) & 0xf;
			break;

		case 1:
			/* 1. Set DAC mode */
			rmw[0].address = F020_SFR_DAC1CN;
			rmw[0].and_mask = 0xff;
			rmw[0].or_value = F020_MASK_DACxCN_DACxEN;

			/* 2 load low byte of DAC value first */
			rmw[1].address = F020_SFR_DAC1L;
			rmw[1].and_mask = 0xff;
			rmw[1].or_value = value & 0xff;

			/* 3 load high byte of DAC value next to latch the
			   12-bit value */
			rmw[2].address = F020_SFR_DAC1H;
			rmw[2].and_mask = 0xff;
			rmw[2].or_value = (value >> 8) & 0xf;
			break;
		}
		result = FUNC1(slot->usb, 3, rmw);
		slot->usb->analog_out_shadow[channel] = value;
	}
	FUNC2(&slot->mutex);

	return result;
}