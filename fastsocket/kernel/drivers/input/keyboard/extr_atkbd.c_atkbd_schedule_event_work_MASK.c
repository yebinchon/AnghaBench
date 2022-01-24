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
struct atkbd {int /*<<< orphan*/  event_work; int /*<<< orphan*/  event_mask; scalar_t__ event_jiffies; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct atkbd *atkbd, int event_bit)
{
	unsigned long delay = FUNC0(50);

	if (FUNC3(jiffies, atkbd->event_jiffies + delay))
		delay = 0;

	atkbd->event_jiffies = jiffies;
	FUNC2(event_bit, &atkbd->event_mask);
	FUNC4();
	FUNC1(&atkbd->event_work, delay);
}