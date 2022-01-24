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
struct TYPE_2__ {int rx_trigger; int tx_trigger; } ;
struct esp_struct {int stat_flags; int line; int irq; TYPE_1__ config; } ;

/* Variables and functions */
 int ESI_SET_DMA_TMOUT ; 
 int ESI_SET_ENH_IRQ ; 
 int ESI_SET_ERR_MASK ; 
 int ESI_SET_IRQ ; 
 int ESI_SET_MODE ; 
 int ESI_SET_PRESCALAR ; 
 int ESI_SET_REINTR ; 
 int ESI_SET_SRV_MASK ; 
 int ESI_SET_TRIGGER ; 
 int ESPC_SCALE ; 
 int ESP_STAT_NEVER_DMA ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 int /*<<< orphan*/  UART_ESI_CMD2 ; 
 int dma ; 
 int /*<<< orphan*/  FUNC0 (struct esp_struct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct esp_struct *info)
{
	/* put ESPC in enhanced mode */
	FUNC0(info, UART_ESI_CMD1, ESI_SET_MODE);

	if (info->stat_flags & ESP_STAT_NEVER_DMA)
		FUNC0(info, UART_ESI_CMD2, 0x01);
	else
		FUNC0(info, UART_ESI_CMD2, 0x31);

	/* disable interrupts for now */
	FUNC0(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
	FUNC0(info, UART_ESI_CMD2, 0x00);

	/* set interrupt and DMA channel */
	FUNC0(info, UART_ESI_CMD1, ESI_SET_IRQ);

	if (info->stat_flags & ESP_STAT_NEVER_DMA)
		FUNC0(info, UART_ESI_CMD2, 0x01);
	else
		FUNC0(info, UART_ESI_CMD2, (dma << 4) | 0x01);

	FUNC0(info, UART_ESI_CMD1, ESI_SET_ENH_IRQ);

	if (info->line % 8)	/* secondary port */
		FUNC0(info, UART_ESI_CMD2, 0x0d);	/* shared */
	else if (info->irq == 9)
		FUNC0(info, UART_ESI_CMD2, 0x02);
	else
		FUNC0(info, UART_ESI_CMD2, info->irq);

	/* set error status mask (check this) */
	FUNC0(info, UART_ESI_CMD1, ESI_SET_ERR_MASK);

	if (info->stat_flags & ESP_STAT_NEVER_DMA)
		FUNC0(info, UART_ESI_CMD2, 0xa1);
	else
		FUNC0(info, UART_ESI_CMD2, 0xbd);

	FUNC0(info, UART_ESI_CMD2, 0x00);

	/* set DMA timeout */
	FUNC0(info, UART_ESI_CMD1, ESI_SET_DMA_TMOUT);
	FUNC0(info, UART_ESI_CMD2, 0xff);

	/* set FIFO trigger levels */
	FUNC0(info, UART_ESI_CMD1, ESI_SET_TRIGGER);
	FUNC0(info, UART_ESI_CMD2, info->config.rx_trigger >> 8);
	FUNC0(info, UART_ESI_CMD2, info->config.rx_trigger);
	FUNC0(info, UART_ESI_CMD2, info->config.tx_trigger >> 8);
	FUNC0(info, UART_ESI_CMD2, info->config.tx_trigger);

	/* Set clock scaling and wait states */
	FUNC0(info, UART_ESI_CMD1, ESI_SET_PRESCALAR);
	FUNC0(info, UART_ESI_CMD2, 0x04 | ESPC_SCALE);

	/* set reinterrupt pacing */
	FUNC0(info, UART_ESI_CMD1, ESI_SET_REINTR);
	FUNC0(info, UART_ESI_CMD2, 0xff);
}