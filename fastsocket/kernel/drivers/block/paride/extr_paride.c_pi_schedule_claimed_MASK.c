#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void (* claim_cont ) () ;int claimed; scalar_t__ pardev; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  pi_spinlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(PIA * pi, void (*cont) (void))
{
	unsigned long flags;

	FUNC1(&pi_spinlock, flags);
	if (pi->pardev && FUNC0(pi->pardev)) {
		pi->claim_cont = cont;
		FUNC2(&pi_spinlock, flags);
		return 0;
	}
	pi->claimed = 1;
	FUNC2(&pi_spinlock, flags);
	return 1;
}