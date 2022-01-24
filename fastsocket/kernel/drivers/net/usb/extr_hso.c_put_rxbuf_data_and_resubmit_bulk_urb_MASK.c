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
struct urb {int dummy; } ;
struct hso_serial {size_t curr_rx_urb_idx; size_t num_rx_urbs; struct urb** rx_urb; scalar_t__* rx_urb_filled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hso_serial*,struct urb*) ; 
 int FUNC1 (struct urb*,struct hso_serial*) ; 

__attribute__((used)) static void FUNC2(struct hso_serial *serial)
{
	int count;
	struct urb *curr_urb;

	while (serial->rx_urb_filled[serial->curr_rx_urb_idx]) {
		curr_urb = serial->rx_urb[serial->curr_rx_urb_idx];
		count = FUNC1(curr_urb, serial);
		if (count == -1)
			return;
		if (count == 0) {
			serial->curr_rx_urb_idx++;
			if (serial->curr_rx_urb_idx >= serial->num_rx_urbs)
				serial->curr_rx_urb_idx = 0;
			FUNC0(serial, curr_urb);
		}
	}
}