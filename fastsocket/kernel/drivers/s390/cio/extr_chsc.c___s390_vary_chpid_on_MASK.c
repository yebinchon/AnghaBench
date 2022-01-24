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
struct subchannel_id {int dummy; } ;
struct schib {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct subchannel_id) ; 
 scalar_t__ FUNC1 (struct subchannel_id,struct schib*) ; 

__attribute__((used)) static int
FUNC2(struct subchannel_id schid, void *data)
{
	struct schib schib;

	if (FUNC1(schid, &schib))
		/* We're through */
		return -ENXIO;
	/* Put it on the slow path. */
	FUNC0(schid);
	return 0;
}