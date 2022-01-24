#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  spu_evnt_swap ; 
 TYPE_1__ timer_spu_event_swap ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(&timer_spu_event_swap);
	timer_spu_event_swap.function = spu_evnt_swap;
	timer_spu_event_swap.data = 0UL;
	timer_spu_event_swap.expires = jiffies + HZ / 25;
	FUNC0(&timer_spu_event_swap);
}