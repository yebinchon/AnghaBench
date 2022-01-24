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
struct stlpanel {int pagenr; int nrports; int iobase; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  panelnr; } ;
struct stlbrd {scalar_t__ brdtype; scalar_t__ ioctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ BRD_ECHPCI ; 
 int CR_RESETALL ; 
 int GCCR ; 
 int GCCR_IVRTYPCHANACK ; 
 int SC26198_PORTS ; 
 int SCCR ; 
 int TSTR ; 
 int WDTRCR ; 
 scalar_t__ XP_ADDR ; 
 scalar_t__ XP_DATA ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct stlbrd*,struct stlpanel*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct stlbrd *brdp, struct stlpanel *panelp)
{
	int	chipmask, i;
	int	nrchips, ioaddr;

	FUNC4("stl_sc26198panelinit(brdp=%p,panelp=%p)\n", brdp, panelp);

	FUNC1(panelp->brdnr, panelp->pagenr);

/*
 *	Check that each chip is present and started up OK.
 */
	chipmask = 0;
	nrchips = (panelp->nrports + 4) / SC26198_PORTS;
	if (brdp->brdtype == BRD_ECHPCI)
		FUNC3(panelp->pagenr, brdp->ioctrl);

	for (i = 0; i < nrchips; i++) {
		ioaddr = panelp->iobase + (i * 4); 
		FUNC3(SCCR, (ioaddr + XP_ADDR));
		FUNC3(CR_RESETALL, (ioaddr + XP_DATA));
		FUNC3(TSTR, (ioaddr + XP_ADDR));
		if (FUNC2(ioaddr + XP_DATA) != 0) {
			FUNC5("STALLION: sc26198 not responding, "
				"brd=%d panel=%d chip=%d\n",
				panelp->brdnr, panelp->panelnr, i);
			continue;
		}
		chipmask |= (0x1 << i);
		FUNC3(GCCR, (ioaddr + XP_ADDR));
		FUNC3(GCCR_IVRTYPCHANACK, (ioaddr + XP_DATA));
		FUNC3(WDTRCR, (ioaddr + XP_ADDR));
		FUNC3(0xff, (ioaddr + XP_DATA));
	}

	FUNC0(panelp->brdnr);
	return chipmask;
}