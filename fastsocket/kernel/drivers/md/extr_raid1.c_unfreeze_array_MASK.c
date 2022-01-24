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
struct r1conf {int /*<<< orphan*/  resync_lock; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  nr_waiting; int /*<<< orphan*/  barrier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct r1conf *conf)
{
	/* reverse the effect of the freeze */
	FUNC0(&conf->resync_lock);
	conf->barrier--;
	conf->nr_waiting--;
	FUNC2(&conf->wait_barrier);
	FUNC1(&conf->resync_lock);
}