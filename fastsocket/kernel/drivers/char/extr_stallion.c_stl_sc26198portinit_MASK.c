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
struct stlport {int portnr; int uartaddr; int hwid; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  pagenr; scalar_t__ ioaddr; } ;
struct stlpanel {int /*<<< orphan*/  pagenr; scalar_t__ iobase; } ;
struct stlbrd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOPCR ; 
 int /*<<< orphan*/  IOPCR_SETSIGS ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlbrd*,struct stlpanel*,struct stlport*) ; 
 int /*<<< orphan*/  FUNC3 (struct stlport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct stlbrd *brdp, struct stlpanel *panelp, struct stlport *portp)
{
	FUNC2("stl_sc26198portinit(brdp=%p,panelp=%p,portp=%p)\n", brdp,
			panelp, portp);

	if ((brdp == NULL) || (panelp == NULL) ||
	    (portp == NULL))
		return;

	portp->ioaddr = panelp->iobase + ((portp->portnr < 8) ? 0 : 4);
	portp->uartaddr = (portp->portnr & 0x07) << 4;
	portp->pagenr = panelp->pagenr;
	portp->hwid = 0x1;

	FUNC1(portp->brdnr, portp->pagenr);
	FUNC3(portp, IOPCR, IOPCR_SETSIGS);
	FUNC0(portp->brdnr);
}