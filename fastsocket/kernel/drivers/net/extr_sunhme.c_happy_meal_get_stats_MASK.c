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
struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct happy_meal {struct net_device_stats net_stats; int /*<<< orphan*/  happy_lock; int /*<<< orphan*/  bigmacregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct happy_meal*,int /*<<< orphan*/ ) ; 
 struct happy_meal* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device_stats *FUNC4(struct net_device *dev)
{
	struct happy_meal *hp = FUNC1(dev);

	FUNC2(&hp->happy_lock);
	FUNC0(hp, hp->bigmacregs);
	FUNC3(&hp->happy_lock);

	return &hp->net_stats;
}