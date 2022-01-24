#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ chan; } ;
typedef  TYPE_2__ pc300dev_t ;
struct TYPE_10__ {int channel; int /*<<< orphan*/  falc; scalar_t__ card; } ;
typedef  TYPE_3__ pc300ch_t ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ cpld_reg1; scalar_t__ falcbase; scalar_t__ cpld_reg2; scalar_t__ scabase; } ;
struct TYPE_11__ {TYPE_1__ hw; } ;
typedef  TYPE_4__ pc300_t ;
typedef  int /*<<< orphan*/  falc_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int CMD_CH_RST ; 
 int CPLD_REG1_FALC_RESET ; 
 int CPLD_REG2_FALC_LED2 ; 
 int CPLD_REG2_FALC_RX_CLK ; 
 int CPLD_REG2_FALC_TX_CLK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PC300_TE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(pc300dev_t * d)
{
	pc300ch_t *chan = (pc300ch_t *) d->chan;
	pc300_t *card = (pc300_t *) chan->card;
	falc_t *pfalc = (falc_t *) & chan->falc;
	int ch = chan->channel;

	FUNC2(card->hw.scabase + FUNC0(CMD, ch), CMD_CH_RST);
	FUNC4(card, ch);
	FUNC5(card, ch);

	if (card->hw.type == PC300_TE) {
		FUNC3(pfalc, 0, sizeof(falc_t));
		FUNC2(card->hw.falcbase + card->hw.cpld_reg2,
			   FUNC1(card->hw.falcbase + card->hw.cpld_reg2) &
			   ~((CPLD_REG2_FALC_TX_CLK | CPLD_REG2_FALC_RX_CLK |
			      CPLD_REG2_FALC_LED2) << (2 * ch)));
		/* Reset the FALC chip */
		FUNC2(card->hw.falcbase + card->hw.cpld_reg1,
			   FUNC1(card->hw.falcbase + card->hw.cpld_reg1) |
			   (CPLD_REG1_FALC_RESET << (2 * ch)));
		FUNC6(10000);
		FUNC2(card->hw.falcbase + card->hw.cpld_reg1,
			   FUNC1(card->hw.falcbase + card->hw.cpld_reg1) &
			   ~(CPLD_REG1_FALC_RESET << (2 * ch)));
	}
}