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
struct TYPE_2__ {int tx; } ;
struct esp_struct {int /*<<< orphan*/  stat_flags; TYPE_1__ icount; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_WRITE ; 
 int /*<<< orphan*/  ESI_START_DMA_TX ; 
 int /*<<< orphan*/  ESP_STAT_DMA_TX ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 scalar_t__ dma_buffer ; 
 int dma_bytes ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct esp_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC9(struct esp_struct *info)
{
	int num_bytes;
	unsigned long flags;

	flags = FUNC0();
	FUNC2(dma);
	FUNC1(dma);

	num_bytes = dma_bytes - FUNC3(dma);
	info->icount.tx += dma_bytes;
	FUNC7(flags);

	if (dma_bytes != num_bytes) {
		dma_bytes -= num_bytes;
		FUNC5(dma_buffer, dma_buffer + num_bytes, dma_bytes);

		FUNC6(dma, DMA_MODE_WRITE,
				FUNC4(dma_buffer), dma_bytes);

		FUNC8(info, UART_ESI_CMD1, ESI_START_DMA_TX);
	} else {
		dma_bytes = 0;
		info->stat_flags &= ~ESP_STAT_DMA_TX;
	}
}