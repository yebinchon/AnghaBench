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
struct pxa3xx_nand_info {int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  state; int /*<<< orphan*/  retcode; scalar_t__ use_dma; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_BBERR ; 
 int /*<<< orphan*/  ERR_DBERR ; 
 int /*<<< orphan*/  ERR_SBERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  NDSR ; 
 unsigned int NDSR_CS0_BBD ; 
 unsigned int NDSR_CS0_CMDD ; 
 unsigned int NDSR_DBERR ; 
 unsigned int NDSR_RDDREQ ; 
 unsigned int NDSR_SBERR ; 
 unsigned int NDSR_WRDREQ ; 
 int /*<<< orphan*/  STATE_DMA_READING ; 
 int /*<<< orphan*/  STATE_DMA_WRITING ; 
 int /*<<< orphan*/  STATE_PIO_READING ; 
 int /*<<< orphan*/  STATE_PIO_WRITING ; 
 int /*<<< orphan*/  STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa3xx_nand_info*,unsigned int) ; 
 unsigned int FUNC2 (struct pxa3xx_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa3xx_nand_info*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa3xx_nand_info*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *devid)
{
	struct pxa3xx_nand_info *info = devid;
	unsigned int status;

	status = FUNC2(info, NDSR);

	if (status & (NDSR_RDDREQ | NDSR_DBERR | NDSR_SBERR)) {
		if (status & NDSR_DBERR)
			info->retcode = ERR_DBERR;
		else if (status & NDSR_SBERR)
			info->retcode = ERR_SBERR;

		FUNC1(info, NDSR_RDDREQ | NDSR_DBERR | NDSR_SBERR);

		if (info->use_dma) {
			info->state = STATE_DMA_READING;
			FUNC4(info, 0);
		} else {
			info->state = STATE_PIO_READING;
			FUNC0(&info->cmd_complete);
		}
	} else if (status & NDSR_WRDREQ) {
		FUNC1(info, NDSR_WRDREQ);
		if (info->use_dma) {
			info->state = STATE_DMA_WRITING;
			FUNC4(info, 1);
		} else {
			info->state = STATE_PIO_WRITING;
			FUNC0(&info->cmd_complete);
		}
	} else if (status & (NDSR_CS0_BBD | NDSR_CS0_CMDD)) {
		if (status & NDSR_CS0_BBD)
			info->retcode = ERR_BBERR;

		FUNC1(info, NDSR_CS0_BBD | NDSR_CS0_CMDD);
		info->state = STATE_READY;
		FUNC0(&info->cmd_complete);
	}
	FUNC3(info, NDSR, status);
	return IRQ_HANDLED;
}