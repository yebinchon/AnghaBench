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
struct wbcir_data {scalar_t__ ebase; scalar_t__ wbase; } ;

/* Variables and functions */
 scalar_t__ WBCIR_REG_ECEIR_CCTL ; 
 scalar_t__ WBCIR_REG_ECEIR_CTS ; 
 scalar_t__ WBCIR_REG_WCEIR_CFG1 ; 
 scalar_t__ WBCIR_REG_WCEIR_CTL ; 
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ; 
 scalar_t__ WBCIR_REG_WCEIR_STS ; 
 scalar_t__ invert ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int protocol ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC2(struct wbcir_data *data)
{
	u8 tmp;

	/* Set PROT_SEL, RX_INV, Clear CEIR_EN (needed for the led) */
	tmp = protocol << 4;
	if (invert)
		tmp |= 0x08;
	FUNC0(tmp, data->wbase + WBCIR_REG_WCEIR_CTL);

	/* Clear status bits NEC_REP, BUFF, MSG_END, MATCH */
	FUNC1(data->wbase + WBCIR_REG_WCEIR_STS, 0x17, 0x17);

	/* Clear BUFF_EN, Clear END_EN, Clear MATCH_EN */
	FUNC1(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);

	/* Set RC5 cell time to correspond to 36 kHz */
	FUNC1(data->wbase + WBCIR_REG_WCEIR_CFG1, 0x4A, 0x7F);

	/* Set IRTX_INV */
	if (invert)
		FUNC0(0x04, data->ebase + WBCIR_REG_ECEIR_CCTL);
	else
		FUNC0(0x00, data->ebase + WBCIR_REG_ECEIR_CCTL);

	/*
	 * Clear IR LED, set SP3 clock to 24Mhz
	 * set SP3_IRRX_SW to binary 01, helpfully not documented
	 */
	FUNC0(0x10, data->ebase + WBCIR_REG_ECEIR_CTS);
}