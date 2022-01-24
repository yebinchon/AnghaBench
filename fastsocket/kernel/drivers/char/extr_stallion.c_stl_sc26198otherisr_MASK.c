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
struct TYPE_2__ {int /*<<< orphan*/  txxon; int /*<<< orphan*/  txxoff; int /*<<< orphan*/  modem; } ;
struct stlport {TYPE_1__ stats; int /*<<< orphan*/  istate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYI_TXFLOWED ; 
 int /*<<< orphan*/  CIR ; 
#define  CIR_SUBBREAK 130 
#define  CIR_SUBCOS 129 
 unsigned char CIR_SUBTYPEMASK ; 
#define  CIR_SUBXONXOFF 128 
 int /*<<< orphan*/  CR_BREAKRESET ; 
 int /*<<< orphan*/  IPR ; 
 unsigned char IPR_DCDCHANGE ; 
 int /*<<< orphan*/  SCCR ; 
 int /*<<< orphan*/  XISR ; 
 unsigned char XISR_RXXOFFGOT ; 
 unsigned char XISR_RXXONGOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct stlport*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct stlport*) ; 
 unsigned char FUNC4 (struct stlport*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC5 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*) ; 
 int /*<<< orphan*/  FUNC7 (struct stlport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct stlport *portp, unsigned int iack)
{
	unsigned char	cir, ipr, xisr;

	FUNC1("stl_sc26198otherisr(portp=%p,iack=%x)\n", portp, iack);

	cir = FUNC4(portp, CIR);

	switch (cir & CIR_SUBTYPEMASK) {
	case CIR_SUBCOS:
		ipr = FUNC5(portp, IPR);
		if (ipr & IPR_DCDCHANGE) {
			FUNC3(portp);
			portp->stats.modem++;
		}
		break;
	case CIR_SUBXONXOFF:
		xisr = FUNC5(portp, XISR);
		if (xisr & XISR_RXXONGOT) {
			FUNC2(ASYI_TXFLOWED, &portp->istate);
			portp->stats.txxoff++;
		}
		if (xisr & XISR_RXXOFFGOT) {
			FUNC0(ASYI_TXFLOWED, &portp->istate);
			portp->stats.txxon++;
		}
		break;
	case CIR_SUBBREAK:
		FUNC7(portp, SCCR, CR_BREAKRESET);
		FUNC6(portp);
		break;
	default:
		break;
	}
}