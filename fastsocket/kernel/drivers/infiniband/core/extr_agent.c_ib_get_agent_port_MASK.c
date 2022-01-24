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
struct ib_device {int dummy; } ;
struct ib_agent_port_private {int dummy; } ;

/* Variables and functions */
 struct ib_agent_port_private* FUNC0 (struct ib_device*,int) ; 
 int /*<<< orphan*/  ib_agent_port_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct ib_agent_port_private *
FUNC3(struct ib_device *device, int port_num)
{
	struct ib_agent_port_private *entry;
	unsigned long flags;

	FUNC1(&ib_agent_port_list_lock, flags);
	entry = FUNC0(device, port_num);
	FUNC2(&ib_agent_port_list_lock, flags);
	return entry;
}