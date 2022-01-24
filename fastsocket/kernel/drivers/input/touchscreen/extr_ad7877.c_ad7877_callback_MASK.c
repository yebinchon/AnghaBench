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
struct ad7877 {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; scalar_t__ pending; } ;

/* Variables and functions */
 scalar_t__ TS_PEN_UP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ad7877*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *_ts)
{
	struct ad7877 *ts = _ts;

	FUNC2(&ts->lock);

	FUNC0(ts);
	ts->pending = 0;
	FUNC1(&ts->timer, jiffies + TS_PEN_UP_TIMEOUT);

	FUNC3(&ts->lock);
}