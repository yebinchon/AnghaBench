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
struct TYPE_3__ {int /*<<< orphan*/  isdnloop_lock; int /*<<< orphan*/ * c_timer; } ;
typedef  TYPE_1__ isdnloop_card ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(isdnloop_card * card, int ch)
{
	unsigned long flags;

	FUNC1(&card->isdnloop_lock, flags);
	FUNC0(&card->c_timer[ch]);
	FUNC2(&card->isdnloop_lock, flags);
}