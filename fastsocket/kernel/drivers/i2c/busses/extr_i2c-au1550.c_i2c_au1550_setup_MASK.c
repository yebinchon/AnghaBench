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
typedef  int u32 ;
struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct TYPE_2__ {int psc_smbcfg; int psc_smbstat; int psc_smbtmr; int /*<<< orphan*/  psc_ctrl; int /*<<< orphan*/  psc_smbmsk; int /*<<< orphan*/  psc_sel; } ;
typedef  TYPE_1__ psc_smb_t ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_CTRL_DISABLE ; 
 int /*<<< orphan*/  PSC_CTRL_ENABLE ; 
 int /*<<< orphan*/  PSC_CTRL_SUSPEND ; 
 int /*<<< orphan*/  PSC_SEL_PS_SMBUSMODE ; 
 int PSC_SMBCFG_DD_DISABLE ; 
 int PSC_SMBCFG_DE_ENABLE ; 
 int /*<<< orphan*/  PSC_SMBCFG_DIV8 ; 
 int PSC_SMBCFG_RT_FIFO8 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PSC_SMBCFG_TT_FIFO8 ; 
 int /*<<< orphan*/  PSC_SMBMSK_ALLMASK ; 
 int PSC_SMBSTAT_SR ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct i2c_au1550_data *priv)
{
	volatile psc_smb_t *sp = (volatile psc_smb_t *)priv->psc_base;
	u32 stat;

	sp->psc_ctrl = PSC_CTRL_DISABLE;
	FUNC8();
	sp->psc_sel = PSC_SEL_PS_SMBUSMODE;
	sp->psc_smbcfg = 0;
	FUNC8();
	sp->psc_ctrl = PSC_CTRL_ENABLE;
	FUNC8();
	do {
		stat = sp->psc_smbstat;
		FUNC8();
	} while ((stat & PSC_SMBSTAT_SR) == 0);

	sp->psc_smbcfg = (PSC_SMBCFG_RT_FIFO8 | PSC_SMBCFG_TT_FIFO8 |
				PSC_SMBCFG_DD_DISABLE);

	/* Divide by 8 to get a 6.25 MHz clock.  The later protocol
	 * timings are based on this clock.
	 */
	sp->psc_smbcfg |= FUNC0(PSC_SMBCFG_DIV8);
	sp->psc_smbmsk = PSC_SMBMSK_ALLMASK;
	FUNC8();

	/* Set the protocol timer values.  See Table 71 in the
	 * Au1550 Data Book for standard timing values.
	 */
	sp->psc_smbtmr = FUNC7(0) | FUNC3(15) | \
		FUNC4(15) | FUNC5(15) | \
		FUNC6(15) | FUNC2(15) | \
		FUNC1(15);
	FUNC8();

	sp->psc_smbcfg |= PSC_SMBCFG_DE_ENABLE;
	do {
		stat = sp->psc_smbstat;
		FUNC8();
	} while ((stat & PSC_SMBSTAT_SR) == 0);

	sp->psc_ctrl = PSC_CTRL_SUSPEND;
	FUNC8();
}