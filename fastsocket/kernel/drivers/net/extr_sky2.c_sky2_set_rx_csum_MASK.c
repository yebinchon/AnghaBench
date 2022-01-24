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
typedef  scalar_t__ u32 ;
struct sky2_port {size_t port; int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMU_DIS_RX_CHKSUM ; 
 int /*<<< orphan*/  BMU_ENA_RX_CHKSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int /*<<< orphan*/  SKY2_FLAG_RX_CHECKSUM ; 
 struct sky2_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/ * rxqaddr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 data)
{
	struct sky2_port *sky2 = FUNC1(dev);

	if (data)
		sky2->flags |= SKY2_FLAG_RX_CHECKSUM;
	else
		sky2->flags &= ~SKY2_FLAG_RX_CHECKSUM;

	FUNC2(sky2->hw, FUNC0(rxqaddr[sky2->port], Q_CSR),
		     data ? BMU_ENA_RX_CHKSUM : BMU_DIS_RX_CHKSUM);

	return 0;
}