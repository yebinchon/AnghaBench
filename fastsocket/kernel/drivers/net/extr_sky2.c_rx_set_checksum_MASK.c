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
struct sky2_rx_le {int opcode; scalar_t__ ctrl; int /*<<< orphan*/  addr; } ;
struct sky2_port {size_t port; int flags; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMU_DIS_RX_CHKSUM ; 
 int /*<<< orphan*/  BMU_ENA_RX_CHKSUM ; 
 int ETH_HLEN ; 
 int HW_OWNER ; 
 int OP_TCPSTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int SKY2_FLAG_RX_CHECKSUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * rxqaddr ; 
 struct sky2_rx_le* FUNC2 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sky2_port *sky2)
{
	struct sky2_rx_le *le = FUNC2(sky2);

	le->addr = FUNC1((ETH_HLEN << 16) | ETH_HLEN);
	le->ctrl = 0;
	le->opcode = OP_TCPSTART | HW_OWNER;

	FUNC3(sky2->hw,
		     FUNC0(rxqaddr[sky2->port], Q_CSR),
		     (sky2->flags & SKY2_FLAG_RX_CHECKSUM)
		     ? BMU_ENA_RX_CHKSUM : BMU_DIS_RX_CHKSUM);
}