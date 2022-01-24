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
typedef  int u16 ;
struct net_device {unsigned int base_addr; } ;
struct ethtool_cmd {int supported; int /*<<< orphan*/  duplex; scalar_t__ phy_address; int /*<<< orphan*/  speed; int /*<<< orphan*/  transceiver; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int CFG_AUI_SELECT ; 
 scalar_t__ CONFIG ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 scalar_t__ MGMT ; 
 int /*<<< orphan*/  PORT_AUI ; 
 int /*<<< orphan*/  PORT_TP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SPEED_10 ; 
 int SUPPORTED_10baseT_Full ; 
 int SUPPORTED_10baseT_Half ; 
 int SUPPORTED_AUI ; 
 int SUPPORTED_TP ; 
 scalar_t__ TCR ; 
 int TCR_FDUPLX ; 
 int /*<<< orphan*/  XCVR_INTERNAL ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct ethtool_cmd *ecmd)
{
    u16 tmp;
    unsigned int ioaddr = dev->base_addr;

    ecmd->supported = (SUPPORTED_TP | SUPPORTED_AUI |
	SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full);
		
    FUNC0(1);
    tmp = FUNC1(ioaddr + CONFIG);
    ecmd->port = (tmp & CFG_AUI_SELECT) ? PORT_AUI : PORT_TP;
    ecmd->transceiver = XCVR_INTERNAL;
    ecmd->speed = SPEED_10;
    ecmd->phy_address = ioaddr + MGMT;

    FUNC0(0);
    tmp = FUNC1(ioaddr + TCR);
    ecmd->duplex = (tmp & TCR_FDUPLX) ? DUPLEX_FULL : DUPLEX_HALF;

    return 0;
}