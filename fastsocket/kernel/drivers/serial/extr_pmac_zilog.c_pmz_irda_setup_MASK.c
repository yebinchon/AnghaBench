#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct uart_pmac_port {int /*<<< orphan*/ * curregs; TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ ofdev; } ;

/* Variables and functions */
 int ALL_SNT ; 
 int /*<<< orphan*/  CS8 ; 
 int /*<<< orphan*/  DTR ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 size_t R5 ; 
 int Rx_CH_AV ; 
 int Tx_BUF_EMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct uart_pmac_port*) ; 
 int FUNC6 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_pmac_port*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_pmac_port*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC11(struct uart_pmac_port *uap, unsigned long *baud)
{
	u8 cmdbyte;
	int t, version;

	switch (*baud) {
	/* SIR modes */
	case 2400:
		cmdbyte = 0x53;
		break;
	case 4800:
		cmdbyte = 0x52;
		break;
	case 9600:
		cmdbyte = 0x51;
		break;
	case 19200:
		cmdbyte = 0x50;
		break;
	case 38400:
		cmdbyte = 0x4f;
		break;
	case 57600:
		cmdbyte = 0x4e;
		break;
	case 115200:
		cmdbyte = 0x4d;
		break;
	/* The FIR modes aren't really supported at this point, how
	 * do we select the speed ? via the FCR on KeyLargo ?
	 */
	case 1152000:
		cmdbyte = 0;
		break;
	case 4000000:
		cmdbyte = 0;
		break;
	default: /* 9600 */
		cmdbyte = 0x51;
		*baud = 9600;
		break;
	}

	/* Wait for transmitter to drain */
	t = 10000;
	while ((FUNC6(uap, R0) & Tx_BUF_EMP) == 0
	       || (FUNC6(uap, R1) & ALL_SNT) == 0) {
		if (--t <= 0) {
			FUNC0(&uap->dev->ofdev.dev, "transmitter didn't drain\n");
			return;
		}
		FUNC7(10);
	}

	/* Drain the receiver too */
	t = 100;
	(void)FUNC5(uap);
	(void)FUNC5(uap);
	(void)FUNC5(uap);
	FUNC2(10);
	while (FUNC6(uap, R0) & Rx_CH_AV) {
		FUNC5(uap);
		FUNC2(10);
		if (--t <= 0) {
			FUNC0(&uap->dev->ofdev.dev, "receiver didn't drain\n");
			return;
		}
	}

	/* Switch to command mode */
	uap->curregs[R5] |= DTR;
	FUNC9(uap, R5, uap->curregs[R5]);
	FUNC10(uap);
       	FUNC2(1);

	/* Switch SCC to 19200 */
	FUNC3(uap, CS8, 0, 19200);		
	FUNC4(uap, uap->curregs);
       	FUNC2(1);

	/* Write get_version command byte */
	FUNC8(uap, 1);
	t = 5000;
	while ((FUNC6(uap, R0) & Rx_CH_AV) == 0) {
		if (--t <= 0) {
			FUNC0(&uap->dev->ofdev.dev,
				"irda_setup timed out on get_version byte\n");
			goto out;
		}
		FUNC7(10);
	}
	version = FUNC5(uap);

	if (version < 4) {
		FUNC1(&uap->dev->ofdev.dev, "IrDA: dongle version %d not supported\n",
			 version);
		goto out;
	}

	/* Send speed mode */
	FUNC8(uap, cmdbyte);
	t = 5000;
	while ((FUNC6(uap, R0) & Rx_CH_AV) == 0) {
		if (--t <= 0) {
			FUNC0(&uap->dev->ofdev.dev,
				"irda_setup timed out on speed mode byte\n");
			goto out;
		}
		FUNC7(10);
	}
	t = FUNC5(uap);
	if (t != cmdbyte)
		FUNC0(&uap->dev->ofdev.dev,
			"irda_setup speed mode byte = %x (%x)\n", t, cmdbyte);

	FUNC1(&uap->dev->ofdev.dev, "IrDA setup for %ld bps, dongle version: %d\n",
		 *baud, version);

	(void)FUNC5(uap);
	(void)FUNC5(uap);
	(void)FUNC5(uap);

 out:
	/* Switch back to data mode */
	uap->curregs[R5] &= ~DTR;
	FUNC9(uap, R5, uap->curregs[R5]);
	FUNC10(uap);

	(void)FUNC5(uap);
	(void)FUNC5(uap);
	(void)FUNC5(uap);
}