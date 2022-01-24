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
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_FIFOCON ; 
 int CIR_FIFOCON_RX_TRIGGER_LEV ; 
 int CIR_FIFOCON_TX_TRIGGER_LEV ; 
 int /*<<< orphan*/  CIR_IRCON ; 
 int CIR_IRCON_RXEN ; 
 int CIR_IRCON_RXINV ; 
 int CIR_IRCON_SAMPLE_PERIOD_SEL ; 
 int CIR_IRCON_TXEN ; 
 int /*<<< orphan*/  CIR_IRSTS ; 
 int CIR_RX_LIMIT_COUNT ; 
 int /*<<< orphan*/  CIR_SLCH ; 
 int /*<<< orphan*/  CIR_SLCL ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*) ; 

__attribute__((used)) static void FUNC4(struct nvt_dev *nvt)
{
	/* set sample limit count (PE interrupt raised when reached) */
	FUNC0(nvt, CIR_RX_LIMIT_COUNT >> 8, CIR_SLCH);
	FUNC0(nvt, CIR_RX_LIMIT_COUNT & 0xff, CIR_SLCL);

	/* set fifo irq trigger levels */
	FUNC0(nvt, CIR_FIFOCON_TX_TRIGGER_LEV |
			  CIR_FIFOCON_RX_TRIGGER_LEV, CIR_FIFOCON);

	/*
	 * Enable TX and RX, specify carrier on = low, off = high, and set
	 * sample period (currently 50us)
	 */
	FUNC0(nvt,
			  CIR_IRCON_TXEN | CIR_IRCON_RXEN |
			  CIR_IRCON_RXINV | CIR_IRCON_SAMPLE_PERIOD_SEL,
			  CIR_IRCON);

	/* clear hardware rx and tx fifos */
	FUNC1(nvt);
	FUNC2(nvt);

	/* clear any and all stray interrupts */
	FUNC0(nvt, 0xff, CIR_IRSTS);

	/* and finally, enable interrupts */
	FUNC3(nvt);
}