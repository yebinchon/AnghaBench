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
struct macvlan_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 scalar_t__ FUNC1 (struct macvlan_port const*,unsigned char const*) ; 

__attribute__((used)) static int FUNC2(const struct macvlan_port *port,
				const unsigned char *addr)
{
	/* Test to see if the specified multicast address is
	 * currently in use by the underlying device or
	 * another macvlan.
	 */
	if (!FUNC0(port->dev->dev_addr, addr))
		return 1;

	if (FUNC1(port, addr))
		return 1;

	return 0;
}