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
struct subchannel {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct subchannel_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_subchannel ; 
 int /*<<< orphan*/  css_bus_type ; 
 struct subchannel* FUNC1 (struct device*) ; 

struct subchannel *
FUNC2(struct subchannel_id schid)
{
	struct device *dev;

	dev = FUNC0(&css_bus_type, NULL,
			      &schid, check_subchannel);

	return dev ? FUNC1(dev) : NULL;
}