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
struct r5conf {TYPE_1__* mddev; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  seq_flush; int /*<<< orphan*/  plug; } ;
struct TYPE_2__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(struct r5conf *conf)
{
	unsigned long flags;

	FUNC3(&conf->device_lock, flags);

	if (FUNC1(&conf->plug)) {
		conf->seq_flush++;
		FUNC2(conf);
	}
	FUNC0(conf->mddev->thread);

	FUNC4(&conf->device_lock, flags);

	FUNC5(conf->mddev);
}