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
struct tty_struct {int dummy; } ;
struct stlport {int /*<<< orphan*/  istate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYI_TXFLOWED ; 
 unsigned char CR_HOSTXON ; 
 int /*<<< orphan*/  MR0 ; 
 unsigned char MR0_SWFRXTX ; 
 int /*<<< orphan*/  SCCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char FUNC1 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stlport*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct stlport*) ; 

__attribute__((used)) static void FUNC4(struct stlport *portp, struct tty_struct *tty)
{
	unsigned char	mr0;

	mr0 = FUNC1(portp, MR0);
	FUNC2(portp, MR0, (mr0 & ~MR0_SWFRXTX));
	FUNC2(portp, SCCR, CR_HOSTXON);
	FUNC3(portp);
	FUNC2(portp, MR0, mr0);
	FUNC0(ASYI_TXFLOWED, &portp->istate);
}