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
struct TYPE_2__ {int psc0; int p; int psc1; } ;
struct etr_aib {TYPE_1__ esw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct etr_aib*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct etr_aib *aib, unsigned int func)
{
	FUNC0(FUNC1(aib, func) != 0);
	/* Convert port state to logical port state. */
	if (aib->esw.psc0 == 1)
		aib->esw.psc0 = 2;
	else if (aib->esw.psc0 == 0 && aib->esw.p == 0)
		aib->esw.psc0 = 1;
	if (aib->esw.psc1 == 1)
		aib->esw.psc1 = 2;
	else if (aib->esw.psc1 == 0 && aib->esw.p == 1)
		aib->esw.psc1 = 1;
}