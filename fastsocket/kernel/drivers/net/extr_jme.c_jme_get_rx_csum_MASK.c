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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct jme_adapter {int reg_rxmcs; } ;

/* Variables and functions */
 int RXMCS_CHECKSUM ; 
 struct jme_adapter* FUNC0 (struct net_device*) ; 

__attribute__((used)) static u32
FUNC1(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC0(netdev);
	return jme->reg_rxmcs & RXMCS_CHECKSUM;
}