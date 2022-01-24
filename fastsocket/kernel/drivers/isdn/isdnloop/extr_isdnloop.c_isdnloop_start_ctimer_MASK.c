#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  isdnloop_lock; TYPE_3__* c_timer; } ;
typedef  TYPE_1__ isdnloop_card ;
struct TYPE_6__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;

/* Variables and functions */
 scalar_t__ ISDNLOOP_TIMER_ALERTWAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  isdnloop_atimeout0 ; 
 int /*<<< orphan*/  isdnloop_atimeout1 ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(isdnloop_card * card, int ch)
{
	unsigned long flags;

	FUNC2(&card->isdnloop_lock, flags);
	FUNC1(&card->c_timer[ch]);
	card->c_timer[ch].expires = jiffies + ISDNLOOP_TIMER_ALERTWAIT;
	if (ch)
		card->c_timer[ch].function = isdnloop_atimeout1;
	else
		card->c_timer[ch].function = isdnloop_atimeout0;
	card->c_timer[ch].data = (unsigned long) card;
	FUNC0(&card->c_timer[ch]);
	FUNC3(&card->isdnloop_lock, flags);
}