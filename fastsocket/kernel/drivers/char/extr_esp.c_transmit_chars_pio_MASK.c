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
struct TYPE_2__ {scalar_t__ tty; } ;
struct esp_struct {int xmit_cnt; int xmit_tail; int /*<<< orphan*/  IER; TYPE_1__ port; scalar_t__ io_port; int /*<<< orphan*/ * xmit_buf; } ;
struct esp_pio_buffer {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESI_GET_TX_AVAIL ; 
 int /*<<< orphan*/  ESI_NO_COMMAND ; 
 int /*<<< orphan*/  ESI_SET_SRV_MASK ; 
 int ESP_XMIT_SIZE ; 
 scalar_t__ UART_ESI_CMD1 ; 
 scalar_t__ UART_ESI_CMD2 ; 
 int /*<<< orphan*/  UART_ESI_STAT1 ; 
 int /*<<< orphan*/  UART_ESI_STAT2 ; 
 scalar_t__ UART_ESI_TX ; 
 int /*<<< orphan*/  UART_IER_THRI ; 
 int WAKEUP_CHARS ; 
 struct esp_pio_buffer* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct esp_pio_buffer*) ; 
 int FUNC5 (struct esp_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct esp_struct*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC8(struct esp_struct *info,
					int space_avail)
{
	int i;
	struct esp_pio_buffer *pio_buf;

	pio_buf = FUNC0();

	if (!pio_buf)
		return;

	while (space_avail && info->xmit_cnt) {
		if (info->xmit_tail + space_avail <= ESP_XMIT_SIZE) {
			FUNC1(pio_buf->data,
			       &(info->xmit_buf[info->xmit_tail]),
			       space_avail);
		} else {
			i = ESP_XMIT_SIZE - info->xmit_tail;
			FUNC1(pio_buf->data,
			       &(info->xmit_buf[info->xmit_tail]), i);
			FUNC1(&(pio_buf->data[i]), info->xmit_buf,
			       space_avail - i);
		}

		info->xmit_cnt -= space_avail;
		info->xmit_tail = (info->xmit_tail + space_avail) &
			(ESP_XMIT_SIZE - 1);

		for (i = 0; i < space_avail - 1; i += 2) {
			FUNC2(*((unsigned short *)(pio_buf->data + i)),
			     info->io_port + UART_ESI_TX);
		}

		if (space_avail & 0x0001)
			FUNC6(info, UART_ESI_TX,
				   pio_buf->data[space_avail - 1]);

		if (info->xmit_cnt) {
			FUNC6(info, UART_ESI_CMD1, ESI_NO_COMMAND);
			FUNC6(info, UART_ESI_CMD1, ESI_GET_TX_AVAIL);
			space_avail = FUNC5(info, UART_ESI_STAT1) << 8;
			space_avail |= FUNC5(info, UART_ESI_STAT2);

			if (space_avail > info->xmit_cnt)
				space_avail = info->xmit_cnt;
		}
	}

	if (info->xmit_cnt < WAKEUP_CHARS) {
		if (info->port.tty)
			FUNC7(info->port.tty);

#ifdef SERIAL_DEBUG_INTR
		printk("THRE...");
#endif

		if (info->xmit_cnt <= 0) {
			info->IER &= ~UART_IER_THRI;
			FUNC6(info, UART_ESI_CMD1,
				   ESI_SET_SRV_MASK);
			FUNC6(info, UART_ESI_CMD2, info->IER);
		}
	}

	FUNC4(pio_buf);
}