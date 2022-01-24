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
struct TYPE_2__ {size_t shmem_pgport; int shmem_magic; int /*<<< orphan*/  lock; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  devicename; scalar_t__ StartOnReset; scalar_t__ rambase; int /*<<< orphan*/ * ioport; } ;

/* Variables and functions */
 scalar_t__ CHECKRESET_TIME ; 
 unsigned long SIGNATURE ; 
 scalar_t__ SIG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__** sc_adapter ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(unsigned long data)
{
	unsigned long flags;
	unsigned long sig;
	int card = (unsigned int) data;

	FUNC3("%s: check_timer timer called\n",
		sc_adapter[card]->devicename);

	/* Setup the io ports */
	FUNC4(card);

	FUNC5(&sc_adapter[card]->lock, flags);
	FUNC2(sc_adapter[card]->ioport[sc_adapter[card]->shmem_pgport],
		(sc_adapter[card]->shmem_magic>>14) | 0x80);
	sig = (unsigned long) *((unsigned long *)(sc_adapter[card]->rambase + SIG_OFFSET));

	/* check the signature */
	if(sig == SIGNATURE) {
		FUNC0(card);
		FUNC6(&sc_adapter[card]->lock, flags);
		/* See if we need to do a startproc */
		if (sc_adapter[card]->StartOnReset)
			FUNC7(card);
	} else  {
		FUNC3("%s: No signature yet, waiting another %lu jiffies.\n",
			sc_adapter[card]->devicename, CHECKRESET_TIME);
		FUNC1(&sc_adapter[card]->reset_timer, jiffies+CHECKRESET_TIME);
		FUNC6(&sc_adapter[card]->lock, flags);
	}
}