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
struct net_device {int dummy; } ;
struct TYPE_3__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct cisco_state {TYPE_1__ timer; int /*<<< orphan*/  lock; scalar_t__ rxseq; scalar_t__ txseq; scalar_t__ up; } ;
typedef  int /*<<< orphan*/  hdlc_device ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  cisco_timer ; 
 int /*<<< orphan*/ * FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cisco_state* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	hdlc_device *hdlc = FUNC1(dev);
	struct cisco_state *st = FUNC5(hdlc);
	unsigned long flags;

	FUNC3(&st->lock, flags);
	st->up = st->txseq = st->rxseq = 0;
	FUNC4(&st->lock, flags);

	FUNC2(&st->timer);
	st->timer.expires = jiffies + HZ; /* First poll after 1 s */
	st->timer.function = cisco_timer;
	st->timer.data = (unsigned long)dev;
	FUNC0(&st->timer);
}