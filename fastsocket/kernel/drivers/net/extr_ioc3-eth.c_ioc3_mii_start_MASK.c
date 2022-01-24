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
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/ * function; scalar_t__ expires; } ;
struct ioc3_private {TYPE_1__ ioc3_timer; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ioc3_timer ; 
 scalar_t__ jiffies ; 

__attribute__((used)) static void FUNC1(struct ioc3_private *ip)
{
	ip->ioc3_timer.expires = jiffies + (12 * HZ)/10;  /* 1.2 sec. */
	ip->ioc3_timer.data = (unsigned long) ip;
	ip->ioc3_timer.function = &ioc3_timer;
	FUNC0(&ip->ioc3_timer);
}