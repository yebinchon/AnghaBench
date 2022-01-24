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
struct urb {int actual_length; int transfer_buffer; } ;
struct tty_struct {int /*<<< orphan*/  flags; } ;
struct hso_serial {int curr_rx_urb_offset; scalar_t__* rx_urb_filled; int /*<<< orphan*/  tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TTY_THROTTLED ; 
 size_t FUNC1 (struct hso_serial*,struct urb*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int FUNC4 (struct tty_struct*,int,int) ; 
 struct tty_struct* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC7(struct urb *urb, struct hso_serial *serial)
{
	struct tty_struct *tty;
	int write_length_remaining = 0;
	int curr_write_len;

	/* Sanity check */
	if (urb == NULL || serial == NULL) {
		FUNC0("serial = NULL");
		return -2;
	}

	/* All callers to put_rxbuf_data hold serial_lock */
	tty = FUNC5(serial->tty);

	/* Push data to tty */
	if (tty) {
		write_length_remaining = urb->actual_length -
			serial->curr_rx_urb_offset;
		FUNC0("data to push to tty");
		while (write_length_remaining) {
			if (FUNC2(TTY_THROTTLED, &tty->flags)) {
				FUNC6(tty);
				return -1;
			}
			curr_write_len =  FUNC4
				(tty, urb->transfer_buffer +
				 serial->curr_rx_urb_offset,
				 write_length_remaining);
			serial->curr_rx_urb_offset += curr_write_len;
			write_length_remaining -= curr_write_len;
			FUNC3(tty);
		}
	}
	if (write_length_remaining == 0) {
		serial->curr_rx_urb_offset = 0;
		serial->rx_urb_filled[FUNC1(serial, urb)] = 0;
	}
	FUNC6(tty);
	return write_length_remaining;
}