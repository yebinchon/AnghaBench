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
struct stlport {int portnr; int uartaddr; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  hwid; scalar_t__ pagenr; scalar_t__ ioaddr; } ;
struct stlpanel {scalar_t__ pagenr; scalar_t__ iobase; } ;
struct stlbrd {scalar_t__ brdtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ BRD_ECHPCI ; 
 int /*<<< orphan*/  CAR ; 
 scalar_t__ EREG_BANKSIZE ; 
 int /*<<< orphan*/  GFRCR ; 
 int /*<<< orphan*/  LIVR ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlbrd*,struct stlpanel*,struct stlport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct stlbrd *brdp, struct stlpanel *panelp, struct stlport *portp)
{
	unsigned long flags;
	FUNC2("stl_cd1400portinit(brdp=%p,panelp=%p,portp=%p)\n", brdp,
			panelp, portp);

	if ((brdp == NULL) || (panelp == NULL) ||
	    (portp == NULL))
		return;

	FUNC3(&brd_lock, flags);
	portp->ioaddr = panelp->iobase + (((brdp->brdtype == BRD_ECHPCI) ||
		(portp->portnr < 8)) ? 0 : EREG_BANKSIZE);
	portp->uartaddr = (portp->portnr & 0x04) << 5;
	portp->pagenr = panelp->pagenr + (portp->portnr >> 3);

	FUNC1(portp->brdnr, portp->pagenr);
	FUNC6(portp, CAR, (portp->portnr & 0x03));
	FUNC6(portp, LIVR, (portp->portnr << 3));
	portp->hwid = FUNC5(portp, GFRCR);
	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);
}