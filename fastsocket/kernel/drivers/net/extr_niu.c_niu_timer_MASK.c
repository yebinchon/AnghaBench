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
struct niu {TYPE_1__ timer; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct niu*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,int) ; 

__attribute__((used)) static void FUNC4(unsigned long __opaque)
{
	struct niu *np = (struct niu *) __opaque;
	unsigned long off;
	int err, link_up;

	err = FUNC2(np, &link_up);
	if (!err)
		FUNC3(np, link_up);

	if (FUNC1(np->dev))
		off = 5 * HZ;
	else
		off = 1 * HZ;
	np->timer.expires = jiffies + off;

	FUNC0(&np->timer);
}