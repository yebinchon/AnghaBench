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
struct stlpanel {int nrports; } ;

/* Variables and functions */
 scalar_t__ EREG_DATA ; 
 scalar_t__ SVRR ; 
 unsigned char SVRR_MDM ; 
 unsigned char SVRR_RX ; 
 unsigned char SVRR_TX ; 
 int /*<<< orphan*/  brd_lock ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlpanel*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct stlpanel*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct stlpanel*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct stlpanel*,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct stlpanel *panelp, unsigned int iobase)
{
	unsigned char	svrtype;

	FUNC2("stl_cd1400eiointr(panelp=%p,iobase=%x)\n", panelp, iobase);

	FUNC3(&brd_lock);
	FUNC1(SVRR, iobase);
	svrtype = FUNC0(iobase + EREG_DATA);
	if (panelp->nrports > 4) {
		FUNC1((SVRR + 0x80), iobase);
		svrtype |= FUNC0(iobase + EREG_DATA);
	}

	if (svrtype & SVRR_RX)
		FUNC6(panelp, iobase);
	else if (svrtype & SVRR_TX)
		FUNC7(panelp, iobase);
	else if (svrtype & SVRR_MDM)
		FUNC5(panelp, iobase);

	FUNC4(&brd_lock);
}