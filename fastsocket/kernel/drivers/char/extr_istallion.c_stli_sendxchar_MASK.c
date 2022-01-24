#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct stliport* driver_data; } ;
struct stliport {size_t brdnr; } ;
struct stlibrd {int dummy; } ;
struct TYPE_4__ {char tximdch; int /*<<< orphan*/  txctrl; int /*<<< orphan*/  rxctrl; } ;
typedef  TYPE_1__ asyctrl_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_PORTCTRL ; 
 int /*<<< orphan*/  CT_SENDCHR ; 
 int /*<<< orphan*/  CT_STARTFLOW ; 
 int /*<<< orphan*/  CT_STOPFLOW ; 
 char FUNC0 (struct tty_struct*) ; 
 char FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct stlibrd** stli_brds ; 
 int /*<<< orphan*/  FUNC3 (struct stlibrd*,struct stliport*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 size_t stli_nrbrds ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, char ch)
{
	struct stlibrd	*brdp;
	struct stliport	*portp;
	asyctrl_t	actrl;

	portp = tty->driver_data;
	if (portp == NULL)
		return;
	if (portp->brdnr >= stli_nrbrds)
		return;
	brdp = stli_brds[portp->brdnr];
	if (brdp == NULL)
		return;

	FUNC2(&actrl, 0, sizeof(asyctrl_t));
	if (ch == FUNC1(tty)) {
		actrl.rxctrl = CT_STOPFLOW;
	} else if (ch == FUNC0(tty)) {
		actrl.rxctrl = CT_STARTFLOW;
	} else {
		actrl.txctrl = CT_SENDCHR;
		actrl.tximdch = ch;
	}
	FUNC3(brdp, portp, A_PORTCTRL, &actrl, sizeof(asyctrl_t), 0);
}