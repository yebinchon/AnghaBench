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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ duration; } ;
struct wbcir_data {int irdata_active; int irdata_error; scalar_t__ sbase; int /*<<< orphan*/  dev; TYPE_1__ ev; int /*<<< orphan*/  rxtrigger; scalar_t__ ebase; scalar_t__ wbase; } ;

/* Variables and functions */
#define  IR_PROTOCOL_NEC 130 
#define  IR_PROTOCOL_RC5 129 
#define  IR_PROTOCOL_RC6 128 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  WBCIR_BANK_0 ; 
 int /*<<< orphan*/  WBCIR_BANK_2 ; 
 int /*<<< orphan*/  WBCIR_BANK_4 ; 
 int /*<<< orphan*/  WBCIR_BANK_5 ; 
 int /*<<< orphan*/  WBCIR_BANK_6 ; 
 int /*<<< orphan*/  WBCIR_BANK_7 ; 
 int WBCIR_EXT_ENABLE ; 
 int WBCIR_IRQ_ERR ; 
 int WBCIR_IRQ_NONE ; 
 int WBCIR_IRQ_RX ; 
 scalar_t__ WBCIR_REG_ECEIR_CCTL ; 
 scalar_t__ WBCIR_REG_ECEIR_CTS ; 
 scalar_t__ WBCIR_REG_SP3_ASCR ; 
 scalar_t__ WBCIR_REG_SP3_BGDH ; 
 scalar_t__ WBCIR_REG_SP3_BGDL ; 
 scalar_t__ WBCIR_REG_SP3_EXCR1 ; 
 scalar_t__ WBCIR_REG_SP3_EXCR2 ; 
 scalar_t__ WBCIR_REG_SP3_FCR ; 
 scalar_t__ WBCIR_REG_SP3_IER ; 
 scalar_t__ WBCIR_REG_SP3_IRCFG4 ; 
 scalar_t__ WBCIR_REG_SP3_IRCR1 ; 
 scalar_t__ WBCIR_REG_SP3_IRCR2 ; 
 scalar_t__ WBCIR_REG_SP3_IRCR3 ; 
 scalar_t__ WBCIR_REG_SP3_IRRXDC ; 
 scalar_t__ WBCIR_REG_SP3_IRTXMC ; 
 scalar_t__ WBCIR_REG_SP3_LSR ; 
 scalar_t__ WBCIR_REG_SP3_MCR ; 
 scalar_t__ WBCIR_REG_SP3_MSR ; 
 scalar_t__ WBCIR_REG_SP3_RCCFG ; 
 scalar_t__ WBCIR_REG_WCEIR_CFG1 ; 
 scalar_t__ WBCIR_REG_WCEIR_CTL ; 
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ; 
 scalar_t__ WBCIR_REG_WCEIR_STS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ invert ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int protocol ; 
 int /*<<< orphan*/  FUNC5 (struct wbcir_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC7(struct wbcir_data *data)
{
	u8 tmp;

	/* Disable interrupts */
	FUNC5(data, WBCIR_BANK_0);
	FUNC4(WBCIR_IRQ_NONE, data->sbase + WBCIR_REG_SP3_IER);

	/* Set PROT_SEL, RX_INV, Clear CEIR_EN (needed for the led) */
	tmp = protocol << 4;
	if (invert)
		tmp |= 0x08;
	FUNC4(tmp, data->wbase + WBCIR_REG_WCEIR_CTL);

	/* Clear status bits NEC_REP, BUFF, MSG_END, MATCH */
	FUNC6(data->wbase + WBCIR_REG_WCEIR_STS, 0x17, 0x17);

	/* Clear BUFF_EN, Clear END_EN, Clear MATCH_EN */
	FUNC6(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);

	/* Set RC5 cell time to correspond to 36 kHz */
	FUNC6(data->wbase + WBCIR_REG_WCEIR_CFG1, 0x4A, 0x7F);

	/* Set IRTX_INV */
	if (invert)
		FUNC4(0x04, data->ebase + WBCIR_REG_ECEIR_CCTL);
	else
		FUNC4(0x00, data->ebase + WBCIR_REG_ECEIR_CCTL);

	/*
	 * Clear IR LED, set SP3 clock to 24Mhz
	 * set SP3_IRRX_SW to binary 01, helpfully not documented
	 */
	FUNC4(0x10, data->ebase + WBCIR_REG_ECEIR_CTS);

	/* Enable extended mode */
	FUNC5(data, WBCIR_BANK_2);
	FUNC4(WBCIR_EXT_ENABLE, data->sbase + WBCIR_REG_SP3_EXCR1);

	/*
	 * Configure baud generator, IR data will be sampled at
	 * a bitrate of: (24Mhz * prescaler) / (divisor * 16).
	 *
	 * The ECIR registers include a flag to change the
	 * 24Mhz clock freq to 48Mhz.
	 *
	 * It's not documented in the specs, but fifo levels
	 * other than 16 seems to be unsupported.
	 */

	/* prescaler 1.0, tx/rx fifo lvl 16 */
	FUNC4(0x30, data->sbase + WBCIR_REG_SP3_EXCR2);

	/* Set baud divisor to generate one byte per bit/cell */
	switch (protocol) {
	case IR_PROTOCOL_RC5:
		FUNC4(0xA7, data->sbase + WBCIR_REG_SP3_BGDL);
		break;
	case IR_PROTOCOL_RC6:
		FUNC4(0x53, data->sbase + WBCIR_REG_SP3_BGDL);
		break;
	case IR_PROTOCOL_NEC:
		FUNC4(0x69, data->sbase + WBCIR_REG_SP3_BGDL);
		break;
	}
	FUNC4(0x00, data->sbase + WBCIR_REG_SP3_BGDH);

	/* Set CEIR mode */
	FUNC5(data, WBCIR_BANK_0);
	FUNC4(0xC0, data->sbase + WBCIR_REG_SP3_MCR);
	FUNC0(data->sbase + WBCIR_REG_SP3_LSR); /* Clear LSR */
	FUNC0(data->sbase + WBCIR_REG_SP3_MSR); /* Clear MSR */

	/* Disable RX demod, run-length encoding/decoding, set freq span */
	FUNC5(data, WBCIR_BANK_7);
	FUNC4(0x10, data->sbase + WBCIR_REG_SP3_RCCFG);

	/* Disable timer */
	FUNC5(data, WBCIR_BANK_4);
	FUNC4(0x00, data->sbase + WBCIR_REG_SP3_IRCR1);

	/* Enable MSR interrupt, Clear AUX_IRX */
	FUNC5(data, WBCIR_BANK_5);
	FUNC4(0x00, data->sbase + WBCIR_REG_SP3_IRCR2);

	/* Disable CRC */
	FUNC5(data, WBCIR_BANK_6);
	FUNC4(0x20, data->sbase + WBCIR_REG_SP3_IRCR3);

	/* Set RX/TX (de)modulation freq, not really used */
	FUNC5(data, WBCIR_BANK_7);
	FUNC4(0xF2, data->sbase + WBCIR_REG_SP3_IRRXDC);
	FUNC4(0x69, data->sbase + WBCIR_REG_SP3_IRTXMC);

	/* Set invert and pin direction */
	if (invert)
		FUNC4(0x10, data->sbase + WBCIR_REG_SP3_IRCFG4);
	else
		FUNC4(0x00, data->sbase + WBCIR_REG_SP3_IRCFG4);

	/* Set FIFO thresholds (RX = 8, TX = 3), reset RX/TX */
	FUNC5(data, WBCIR_BANK_0);
	FUNC4(0x97, data->sbase + WBCIR_REG_SP3_FCR);

	/* Clear AUX status bits */
	FUNC4(0xE0, data->sbase + WBCIR_REG_SP3_ASCR);

	/* Clear IR decoding state */
	data->irdata_active = false;
	FUNC3(data->rxtrigger, LED_OFF);
	data->irdata_error = false;
	data->ev.duration = 0;
	FUNC2(data->dev);
	FUNC1(data->dev);

	/* Enable interrupts */
	FUNC4(WBCIR_IRQ_RX | WBCIR_IRQ_ERR, data->sbase + WBCIR_REG_SP3_IER);
}