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
typedef  int u8 ;
typedef  int u32 ;
struct esp {scalar_t__ dma_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  DMA_MODE_WRITE ; 
 int ESP_CMD_DMA ; 
 int /*<<< orphan*/  ESP_TCLOW ; 
 int /*<<< orphan*/  ESP_TCMED ; 
 int /*<<< orphan*/  FUNC1 (struct esp*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct esp *esp, u32 addr, u32 esp_count,
				  u32 dma_count, int write, u8 cmd)
{
	FUNC0(!(cmd & ESP_CMD_DMA));

	FUNC1(esp, (esp_count >> 0) & 0xff, ESP_TCLOW);
	FUNC1(esp, (esp_count >> 8) & 0xff, ESP_TCMED);
	FUNC3 ((int)esp->dma_regs);
	if (write)
		FUNC7 ((int)esp->dma_regs, DMA_MODE_READ);
	else
		FUNC7 ((int)esp->dma_regs, DMA_MODE_WRITE);

	FUNC5 ((int)esp->dma_regs, addr);
	FUNC6 ((int)esp->dma_regs, dma_count);
	FUNC4 ((int)esp->dma_regs);

	FUNC2(esp, cmd);
}