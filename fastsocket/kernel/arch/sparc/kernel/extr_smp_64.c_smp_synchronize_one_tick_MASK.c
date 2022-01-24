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
struct TYPE_2__ {scalar_t__ (* get_tick ) () ;} ;

/* Variables and functions */
 size_t MASTER ; 
 unsigned long NUM_ITERS ; 
 unsigned long NUM_ROUNDS ; 
 size_t SLAVE ; 
 scalar_t__* go ; 
 int /*<<< orphan*/  itc_sync_lock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 () ; 
 TYPE_1__* tick_ops ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(int cpu)
{
	unsigned long flags, i;

	go[MASTER] = 0;

	FUNC2(cpu);

	/* wait for client to be ready */
	while (!go[MASTER])
		FUNC1();

	/* now let the client proceed into his loop */
	go[MASTER] = 0;
	FUNC0("#StoreLoad");

	FUNC3(&itc_sync_lock, flags);
	{
		for (i = 0; i < NUM_ROUNDS*NUM_ITERS; i++) {
			while (!go[MASTER])
				FUNC1();
			go[MASTER] = 0;
			FUNC6();
			go[SLAVE] = tick_ops->get_tick();
			FUNC0("#StoreLoad");
		}
	}
	FUNC4(&itc_sync_lock, flags);
}