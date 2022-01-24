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
struct stlport {int dummy; } ;
struct stlpanel {struct stlport** ports; } ;

/* Variables and functions */
 unsigned int IVR_CHANMASK ; 
 unsigned int IVR_RXDATA ; 
 unsigned int IVR_TXDATA ; 
 scalar_t__ XP_IACK ; 
 int /*<<< orphan*/  brd_lock ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stlport*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct stlport*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*) ; 

__attribute__((used)) static void FUNC7(struct stlpanel *panelp, unsigned int iobase)
{
	struct stlport	*portp;
	unsigned int	iack;

	FUNC2(&brd_lock);

/* 
 *	Work around bug in sc26198 chip... Cannot have A6 address
 *	line of UART high, else iack will be returned as 0.
 */
	FUNC1(0, (iobase + 1));

	iack = FUNC0(iobase + XP_IACK);
	portp = panelp->ports[(iack & IVR_CHANMASK) + ((iobase & 0x4) << 1)];

	if (iack & IVR_RXDATA)
		FUNC5(portp, iack);
	else if (iack & IVR_TXDATA)
		FUNC6(portp);
	else
		FUNC4(portp, iack);

	FUNC3(&brd_lock);
}