#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pio_threshold; } ;
struct TYPE_4__ {TYPE_3__* tty; } ;
struct esp_struct {int stat_flags; int IER; scalar_t__ xmit_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  last_active; TYPE_2__ config; TYPE_1__ port; int /*<<< orphan*/  break_wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {scalar_t__ stopped; } ;

/* Variables and functions */
 int ESI_GET_ERR_STAT ; 
 int ESI_GET_RX_AVAIL ; 
 int ESI_GET_TX_AVAIL ; 
 int ESI_NO_COMMAND ; 
 int ESI_SET_SRV_MASK ; 
 int ESP_STAT_DMA_RX ; 
 int ESP_STAT_DMA_TX ; 
 int ESP_STAT_RX_TIMEOUT ; 
 int ESP_STAT_USE_PIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 int /*<<< orphan*/  UART_ESI_CMD2 ; 
 int /*<<< orphan*/  UART_ESI_SID ; 
 int /*<<< orphan*/  UART_ESI_STAT1 ; 
 int /*<<< orphan*/  UART_ESI_STAT2 ; 
 int UART_IER_RDI ; 
 int UART_IER_THRI ; 
 int /*<<< orphan*/  FUNC0 (struct esp_struct*) ; 
 scalar_t__ dma_bytes ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct esp_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct esp_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct esp_struct*,int) ; 
 int FUNC5 (struct esp_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct esp_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct esp_struct*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct esp_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct esp_struct*,int) ; 
 int FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *dev_id)
{
	struct esp_struct *info;
	unsigned err_status;
	unsigned int scratch;

#ifdef SERIAL_DEBUG_INTR
	printk("rs_interrupt_single(%d)...", irq);
#endif
	info = (struct esp_struct *)dev_id;
	err_status = 0;
	scratch = FUNC5(info, UART_ESI_SID);

	FUNC7(&info->lock);

	if (!info->port.tty) {
		FUNC8(&info->lock);
		return IRQ_NONE;
	}

	if (scratch & 0x04) { /* error */
		FUNC6(info, UART_ESI_CMD1, ESI_GET_ERR_STAT);
		err_status = FUNC5(info, UART_ESI_STAT1);
		FUNC5(info, UART_ESI_STAT2);

		if (err_status & 0x01)
			info->stat_flags |= ESP_STAT_RX_TIMEOUT;

		if (err_status & 0x20) /* UART status */
			FUNC0(info);

		if (err_status & 0x80) /* Start break */
			FUNC13(&info->break_wait);
	}

	if ((scratch & 0x88) || /* DMA completed or timed out */
	    (err_status & 0x1c) /* receive error */) {
		if (info->stat_flags & ESP_STAT_DMA_RX)
			FUNC3(info, err_status);
		else if (info->stat_flags & ESP_STAT_DMA_TX)
			FUNC10(info);
	}

	if (!(info->stat_flags & (ESP_STAT_DMA_RX | ESP_STAT_DMA_TX)) &&
	    ((scratch & 0x01) || (info->stat_flags & ESP_STAT_RX_TIMEOUT)) &&
	    (info->IER & UART_IER_RDI)) {
		int num_bytes;

		FUNC6(info, UART_ESI_CMD1, ESI_NO_COMMAND);
		FUNC6(info, UART_ESI_CMD1, ESI_GET_RX_AVAIL);
		num_bytes = FUNC5(info, UART_ESI_STAT1) << 8;
		num_bytes |= FUNC5(info, UART_ESI_STAT2);

		num_bytes = FUNC12(info->port.tty, num_bytes);

		if (num_bytes) {
			if (dma_bytes ||
			    (info->stat_flags & ESP_STAT_USE_PIO) ||
			    (num_bytes <= info->config.pio_threshold))
				FUNC4(info, num_bytes);
			else
				FUNC2(info, num_bytes);
		}
	}

	if (!(info->stat_flags & (ESP_STAT_DMA_RX | ESP_STAT_DMA_TX)) &&
	    (scratch & 0x02) && (info->IER & UART_IER_THRI)) {
		if ((info->xmit_cnt <= 0) || info->port.tty->stopped) {
			info->IER &= ~UART_IER_THRI;
			FUNC6(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
			FUNC6(info, UART_ESI_CMD2, info->IER);
		} else {
			int num_bytes;

			FUNC6(info, UART_ESI_CMD1, ESI_NO_COMMAND);
			FUNC6(info, UART_ESI_CMD1, ESI_GET_TX_AVAIL);
			num_bytes = FUNC5(info, UART_ESI_STAT1) << 8;
			num_bytes |= FUNC5(info, UART_ESI_STAT2);

			if (num_bytes > info->xmit_cnt)
				num_bytes = info->xmit_cnt;

			if (num_bytes) {
				if (dma_bytes ||
				    (info->stat_flags & ESP_STAT_USE_PIO) ||
				    (num_bytes <= info->config.pio_threshold))
					FUNC11(info, num_bytes);
				else
					FUNC9(info, num_bytes);
			}
		}
	}

	info->last_active = jiffies;

#ifdef SERIAL_DEBUG_INTR
	printk("end.\n");
#endif
	FUNC8(&info->lock);
	return IRQ_HANDLED;
}