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
struct net_device {int /*<<< orphan*/  name; } ;
struct c2_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c2_port*) ; 
 struct c2_port* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct c2_port*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	struct c2_port *c2_port = FUNC1(netdev);

	if (FUNC2(c2_port))
		FUNC3("%s: tx timeout\n", netdev->name);

	FUNC0(c2_port);
}