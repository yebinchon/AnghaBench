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
typedef  int /*<<< orphan*/  u8 ;
struct fcoe_port {int /*<<< orphan*/ * data_src_addr; struct fcoe_interface* priv; } ;
struct fcoe_interface {int /*<<< orphan*/  netdev; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fcoe_port* FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct fc_lport *lport, u8 *addr)
{
	struct fcoe_port *port = FUNC3(lport);
	struct fcoe_interface *fcoe = port->priv;

	FUNC5();
	if (!FUNC2(port->data_src_addr))
		FUNC1(fcoe->netdev, port->data_src_addr);
	if (!FUNC2(addr))
		FUNC0(fcoe->netdev, addr);
	FUNC4(port->data_src_addr, addr, ETH_ALEN);
	FUNC6();
}