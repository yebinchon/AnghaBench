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
struct port_attribute {int dummy; } ;
struct ib_port_attr {int phys_state; } ;
struct ib_port {int /*<<< orphan*/  port_num; int /*<<< orphan*/  ibdev; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 scalar_t__ FUNC1 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC2(struct ib_port *p, struct port_attribute *unused,
			       char *buf)
{
	struct ib_port_attr attr;

	ssize_t ret;

	ret = FUNC0(p->ibdev, p->port_num, &attr);
	if (ret)
		return ret;

	switch (attr.phys_state) {
	case 1:  return FUNC1(buf, "1: Sleep\n");
	case 2:  return FUNC1(buf, "2: Polling\n");
	case 3:  return FUNC1(buf, "3: Disabled\n");
	case 4:  return FUNC1(buf, "4: PortConfigurationTraining\n");
	case 5:  return FUNC1(buf, "5: LinkUp\n");
	case 6:  return FUNC1(buf, "6: LinkErrorRecovery\n");
	case 7:  return FUNC1(buf, "7: Phy Test\n");
	default: return FUNC1(buf, "%d: <unknown>\n", attr.phys_state);
	}
}