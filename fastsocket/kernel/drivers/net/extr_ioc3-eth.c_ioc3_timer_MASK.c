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
struct TYPE_2__ {scalar_t__ expires; } ;
struct ioc3_private {TYPE_1__ ioc3_timer; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc3_private*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct ioc3_private *ip = (struct ioc3_private *) data;

	/* Print the link status if it has changed */
	FUNC2(&ip->mii, 1, 0);
	FUNC1(ip);

	ip->ioc3_timer.expires = jiffies + ((12 * HZ)/10); /* 1.2s */
	FUNC0(&ip->ioc3_timer);
}