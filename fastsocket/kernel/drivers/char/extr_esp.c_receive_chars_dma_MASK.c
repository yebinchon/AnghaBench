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
struct esp_struct {int /*<<< orphan*/  stat_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  ESI_START_DMA_RX ; 
 int /*<<< orphan*/  ESP_STAT_DMA_RX ; 
 int /*<<< orphan*/  ESP_STAT_RX_TIMEOUT ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  dma_buffer ; 
 int dma_bytes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct esp_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct esp_struct *info, int num_bytes)
{
	info->stat_flags &= ~ESP_STAT_RX_TIMEOUT;
	dma_bytes = num_bytes;
	info->stat_flags |= ESP_STAT_DMA_RX;

	FUNC1(dma, DMA_MODE_READ, FUNC0(dma_buffer),
								dma_bytes);
	FUNC2(info, UART_ESI_CMD1, ESI_START_DMA_RX);
}