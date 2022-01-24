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
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ state; } ;
struct sa1100_port {int /*<<< orphan*/  timer; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ MCTRL_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct sa1100_port *sport = (struct sa1100_port *)data;
	unsigned long flags;

	if (sport->port.state) {
		FUNC2(&sport->port.lock, flags);
		FUNC1(sport);
		FUNC3(&sport->port.lock, flags);

		FUNC0(&sport->timer, jiffies + MCTRL_TIMEOUT);
	}
}