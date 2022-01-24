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
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int flags; struct tty_struct* tty; } ;
struct esp_struct {int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  stat_flags; TYPE_1__ port; scalar_t__ io_port; } ;
struct esp_pio_buffer {int* data; } ;

/* Variables and functions */
 int ASYNC_SAK ; 
 int /*<<< orphan*/  ESP_STAT_RX_TIMEOUT ; 
 int TTY_BREAK ; 
 int TTY_FRAME ; 
 int TTY_PARITY ; 
 scalar_t__ UART_ESI_RWS ; 
 scalar_t__ UART_ESI_RX ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 struct esp_pio_buffer* FUNC1 () ; 
 unsigned short FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct esp_pio_buffer*) ; 
 int FUNC4 (struct esp_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static inline void FUNC7(struct esp_struct *info, int num_bytes)
{
	struct tty_struct *tty = info->port.tty;
	int i;
	struct esp_pio_buffer *pio_buf;
	struct esp_pio_buffer *err_buf;
	unsigned char status_mask;

	pio_buf = FUNC1();

	if (!pio_buf)
		return;

	err_buf = FUNC1();

	if (!err_buf) {
		FUNC3(pio_buf);
		return;
	}

	status_mask = (info->read_status_mask >> 2) & 0x07;

	for (i = 0; i < num_bytes - 1; i += 2) {
		*((unsigned short *)(pio_buf->data + i)) =
			FUNC2(info->io_port + UART_ESI_RX);
		err_buf->data[i] = FUNC4(info, UART_ESI_RWS);
		err_buf->data[i + 1] = (err_buf->data[i] >> 3) & status_mask;
		err_buf->data[i] &= status_mask;
	}

	if (num_bytes & 0x0001) {
		pio_buf->data[num_bytes - 1] = FUNC4(info, UART_ESI_RX);
		err_buf->data[num_bytes - 1] =
			(FUNC4(info, UART_ESI_RWS) >> 3) & status_mask;
	}

	/* make sure everything is still ok since interrupts were enabled */
	tty = info->port.tty;

	if (!tty) {
		FUNC3(pio_buf);
		FUNC3(err_buf);
		info->stat_flags &= ~ESP_STAT_RX_TIMEOUT;
		return;
	}

	status_mask = (info->ignore_status_mask >> 2) & 0x07;

	for (i = 0; i < num_bytes; i++) {
		if (!(err_buf->data[i] & status_mask)) {
			int flag = 0;

			if (err_buf->data[i] & 0x04) {
				flag = TTY_BREAK;
				if (info->port.flags & ASYNC_SAK)
					FUNC0(tty);
			} else if (err_buf->data[i] & 0x02)
				flag = TTY_FRAME;
			else if (err_buf->data[i] & 0x01)
				flag = TTY_PARITY;
			FUNC5(tty, pio_buf->data[i], flag);
		}
	}

	FUNC6(tty);

	info->stat_flags &= ~ESP_STAT_RX_TIMEOUT;
	FUNC3(pio_buf);
	FUNC3(err_buf);
}