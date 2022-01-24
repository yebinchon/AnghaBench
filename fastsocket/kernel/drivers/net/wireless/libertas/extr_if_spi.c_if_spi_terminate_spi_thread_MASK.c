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
struct if_spi_card {int /*<<< orphan*/  spi_thread_terminated; int /*<<< orphan*/  spi_ready; scalar_t__ run_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct if_spi_card *card)
{
	/* It would be nice to use kthread_stop here, but that function
	 * can't wake threads waiting for a semaphore. */
	card->run_thread = 0;
	FUNC1(&card->spi_ready);
	FUNC0(&card->spi_thread_terminated);
}