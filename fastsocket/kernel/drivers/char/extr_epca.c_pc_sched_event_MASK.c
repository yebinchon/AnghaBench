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
struct channel {int event; int /*<<< orphan*/  tqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct channel *ch, int event)
{
	/*
	 * We call this to schedule interrupt processing on some event. The
	 * kernel sees our request and calls the related routine in OUR driver.
	 */
	ch->event |= 1 << event;
	FUNC0(&ch->tqueue);
}