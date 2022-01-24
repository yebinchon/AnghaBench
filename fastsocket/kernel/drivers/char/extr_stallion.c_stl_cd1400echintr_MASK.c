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
struct stlpanel {int dummy; } ;

/* Variables and functions */
 scalar_t__ EREG_DATA ; 
 scalar_t__ SVRR ; 
 unsigned char SVRR_MDM ; 
 unsigned char SVRR_RX ; 
 unsigned char SVRR_TX ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlpanel*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct stlpanel*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct stlpanel*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct stlpanel*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct stlpanel *panelp, unsigned int iobase)
{
	unsigned char	svrtype;

	FUNC2("stl_cd1400echintr(panelp=%p,iobase=%x)\n", panelp, iobase);

	FUNC1(SVRR, iobase);
	svrtype = FUNC0(iobase + EREG_DATA);
	FUNC1((SVRR + 0x80), iobase);
	svrtype |= FUNC0(iobase + EREG_DATA);
	if (svrtype & SVRR_RX)
		FUNC4(panelp, iobase);
	else if (svrtype & SVRR_TX)
		FUNC5(panelp, iobase);
	else if (svrtype & SVRR_MDM)
		FUNC3(panelp, iobase);
}