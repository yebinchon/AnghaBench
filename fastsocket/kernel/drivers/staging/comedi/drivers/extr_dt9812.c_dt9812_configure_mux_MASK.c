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
struct usb_dt9812 {scalar_t__ device; } ;
struct dt9812_rmw_byte {int and_mask; int or_value; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 scalar_t__ DT9812_DEVID_DT9812_10 ; 
 int /*<<< orphan*/  F020_SFR_AMX0SL ; 
 int /*<<< orphan*/  F020_SFR_P1 ; 

__attribute__((used)) static void FUNC0(struct usb_dt9812 *dev,
				 struct dt9812_rmw_byte *rmw, int channel)
{
	if (dev->device == DT9812_DEVID_DT9812_10) {
		/* In the DT9812/10V MUX is selected by P1.5-7 */
		rmw->address = F020_SFR_P1;
		rmw->and_mask = 0xe0;
		rmw->or_value = channel << 5;
	} else {
		/* In the DT9812/2.5V, internal mux is selected by bits 0:2 */
		rmw->address = F020_SFR_AMX0SL;
		rmw->and_mask = 0xff;
		rmw->or_value = channel & 0x07;
	}
}