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
struct TYPE_2__ {int psc_smbstat; int psc_smbpcr; unsigned int psc_smbtxrx; int /*<<< orphan*/  psc_smbevnt; } ;
typedef  TYPE_1__ psc_smb_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PSC_SMBEVNT_ALLCLR ; 
 int PSC_SMBPCR_DC ; 
 int PSC_SMBPCR_MS ; 
 int PSC_SMBSTAT_RE ; 
 int PSC_SMBSTAT_TE ; 
 unsigned int PSC_SMBTXRX_STP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct i2c_au1550_data*) ; 
 int FUNC3 (struct i2c_au1550_data*) ; 

__attribute__((used)) static int
FUNC4(struct i2c_au1550_data *adap, unsigned int addr, int rd, int q)
{
	volatile psc_smb_t	*sp;
	u32			stat;

	sp = (volatile psc_smb_t *)(adap->psc_base);

	/* Reset the FIFOs, clear events.
	*/
	stat = sp->psc_smbstat;
	sp->psc_smbevnt = PSC_SMBEVNT_ALLCLR;
	FUNC0();

	if (!(stat & PSC_SMBSTAT_TE) || !(stat & PSC_SMBSTAT_RE)) {
		sp->psc_smbpcr = PSC_SMBPCR_DC;
		FUNC0();
		do {
			stat = sp->psc_smbpcr;
			FUNC0();
		} while ((stat & PSC_SMBPCR_DC) != 0);
		FUNC1(50);
	}

	/* Write out the i2c chip address and specify operation
	*/
	addr <<= 1;
	if (rd)
		addr |= 1;

	/* zero-byte xfers stop immediately */
	if (q)
		addr |= PSC_SMBTXRX_STP;

	/* Put byte into fifo, start up master.
	*/
	sp->psc_smbtxrx = addr;
	FUNC0();
	sp->psc_smbpcr = PSC_SMBPCR_MS;
	FUNC0();
	if (FUNC2(adap))
		return -EIO;
	return (q) ? FUNC3(adap) : 0;
}