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
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct nes_qp {TYPE_1__ terminate_timer; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  nes_terminate_timeout ; 

__attribute__((used)) static void FUNC2(struct nes_qp *nesqp)
{
	FUNC1(&nesqp->terminate_timer);
	nesqp->terminate_timer.function = nes_terminate_timeout;
	nesqp->terminate_timer.expires = jiffies + HZ;
	nesqp->terminate_timer.data = (unsigned long)nesqp;
	FUNC0(&nesqp->terminate_timer);
}