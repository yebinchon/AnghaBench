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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {unsigned int base_addr; } ;
struct ethtool_cmd {scalar_t__ speed; scalar_t__ duplex; scalar_t__ port; scalar_t__ transceiver; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_HALF ; 
 int EINVAL ; 
 scalar_t__ PORT_AUI ; 
 scalar_t__ PORT_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPEED_10 ; 
 scalar_t__ TCR ; 
 int /*<<< orphan*/  TCR_FDUPLX ; 
 scalar_t__ XCVR_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_cmd *ecmd)
{
    u16 tmp;
    unsigned int ioaddr = dev->base_addr;

    if (ecmd->speed != SPEED_10)
    	return -EINVAL;
    if (ecmd->duplex != DUPLEX_HALF && ecmd->duplex != DUPLEX_FULL)
    	return -EINVAL;
    if (ecmd->port != PORT_TP && ecmd->port != PORT_AUI)
	return -EINVAL;
    if (ecmd->transceiver != XCVR_INTERNAL)
    	return -EINVAL;

    if (ecmd->port == PORT_AUI)
	FUNC3(dev, 1);
    else
	FUNC3(dev, 0);

    FUNC0(0);
    tmp = FUNC1(ioaddr + TCR);
    if (ecmd->duplex == DUPLEX_FULL)
	tmp |= TCR_FDUPLX;
    else
	tmp &= ~TCR_FDUPLX;
    FUNC2(tmp, ioaddr + TCR);
	
    return 0;
}