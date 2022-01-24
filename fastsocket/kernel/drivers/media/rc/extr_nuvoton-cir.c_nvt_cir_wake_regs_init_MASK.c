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
 int CIR_RX_LIMIT_COUNT ; 
 int CIR_WAKE_CMP_TOLERANCE ; 
 int /*<<< orphan*/  CIR_WAKE_FIFOCON ; 
 int CIR_WAKE_FIFOCON_RX_TRIGGER_LEV ; 
 int CIR_WAKE_FIFO_CMP_BYTES ; 
 int /*<<< orphan*/  CIR_WAKE_FIFO_CMP_DEEP ; 
 int /*<<< orphan*/  CIR_WAKE_FIFO_CMP_TOL ; 
 int /*<<< orphan*/  CIR_WAKE_IRCON ; 
 int CIR_WAKE_IRCON_MODE0 ; 
 int CIR_WAKE_IRCON_R ; 
 int CIR_WAKE_IRCON_RXEN ; 
 int CIR_WAKE_IRCON_RXINV ; 
 int CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL ; 
 int /*<<< orphan*/  CIR_WAKE_IRSTS ; 
 int /*<<< orphan*/  CIR_WAKE_SLCH ; 
 int /*<<< orphan*/  CIR_WAKE_SLCL ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*) ; 

__attribute__((used)) static void FUNC2(struct nvt_dev *nvt)
{
	/* set number of bytes needed for wake from s3 (default 65) */
	FUNC0(nvt, CIR_WAKE_FIFO_CMP_BYTES,
			       CIR_WAKE_FIFO_CMP_DEEP);

	/* set tolerance/variance allowed per byte during wake compare */
	FUNC0(nvt, CIR_WAKE_CMP_TOLERANCE,
			       CIR_WAKE_FIFO_CMP_TOL);

	/* set sample limit count (PE interrupt raised when reached) */
	FUNC0(nvt, CIR_RX_LIMIT_COUNT >> 8, CIR_WAKE_SLCH);
	FUNC0(nvt, CIR_RX_LIMIT_COUNT & 0xff, CIR_WAKE_SLCL);

	/* set cir wake fifo rx trigger level (currently 67) */
	FUNC0(nvt, CIR_WAKE_FIFOCON_RX_TRIGGER_LEV,
			       CIR_WAKE_FIFOCON);

	/*
	 * Enable TX and RX, specific carrier on = low, off = high, and set
	 * sample period (currently 50us)
	 */
	FUNC0(nvt, CIR_WAKE_IRCON_MODE0 | CIR_WAKE_IRCON_RXEN |
			       CIR_WAKE_IRCON_R | CIR_WAKE_IRCON_RXINV |
			       CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL,
			       CIR_WAKE_IRCON);

	/* clear cir wake rx fifo */
	FUNC1(nvt);

	/* clear any and all stray interrupts */
	FUNC0(nvt, 0xff, CIR_WAKE_IRSTS);
}