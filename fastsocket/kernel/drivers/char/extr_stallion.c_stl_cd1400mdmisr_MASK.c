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
struct TYPE_2__ {int /*<<< orphan*/  modem; } ;
struct stlport {scalar_t__ uartaddr; TYPE_1__ stats; } ;
struct stlpanel {unsigned int ackmask; struct stlport** ports; } ;

/* Variables and functions */
 unsigned int ACK_TYPMASK ; 
 unsigned int ACK_TYPMDM ; 
 scalar_t__ EOSRR ; 
 int EREG_DATA ; 
 int EREG_MDACK ; 
 scalar_t__ MISR ; 
 unsigned char MISR_DCD ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlpanel*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct stlport*) ; 

__attribute__((used)) static void FUNC5(struct stlpanel *panelp, int ioaddr)
{
	struct stlport	*portp;
	unsigned int	ioack;
	unsigned char	misr;

	FUNC2("stl_cd1400mdmisr(panelp=%p)\n", panelp);

	ioack = FUNC0(ioaddr + EREG_MDACK);
	if (((ioack & panelp->ackmask) != 0) ||
	    ((ioack & ACK_TYPMASK) != ACK_TYPMDM)) {
		FUNC3("STALLION: bad MODEM interrupt ack value=%x\n", ioack);
		return;
	}
	portp = panelp->ports[(ioack >> 3)];

	FUNC1((MISR + portp->uartaddr), ioaddr);
	misr = FUNC0(ioaddr + EREG_DATA);
	if (misr & MISR_DCD) {
		FUNC4(portp);
		portp->stats.modem++;
	}

	FUNC1((EOSRR + portp->uartaddr), ioaddr);
	FUNC1(0, (ioaddr + EREG_DATA));
}