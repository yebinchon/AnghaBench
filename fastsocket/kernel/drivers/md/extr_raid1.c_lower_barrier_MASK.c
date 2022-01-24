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
struct r1conf {scalar_t__ barrier; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  resync_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct r1conf *conf)
{
	unsigned long flags;
	FUNC0(conf->barrier <= 0);
	FUNC1(&conf->resync_lock, flags);
	conf->barrier--;
	FUNC2(&conf->resync_lock, flags);
	FUNC3(&conf->wait_barrier);
}