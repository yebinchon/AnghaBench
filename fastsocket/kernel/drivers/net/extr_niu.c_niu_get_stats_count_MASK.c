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
struct niu {int flags; int num_rx_rings; int num_tx_rings; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NIU_FLAGS_XMAC ; 
 int NUM_BMAC_STAT_KEYS ; 
 int NUM_RXCHAN_STAT_KEYS ; 
 int NUM_TXCHAN_STAT_KEYS ; 
 int NUM_XMAC_STAT_KEYS ; 
 struct niu* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev)
{
	struct niu *np = FUNC0(dev);

	return ((np->flags & NIU_FLAGS_XMAC ?
		 NUM_XMAC_STAT_KEYS :
		 NUM_BMAC_STAT_KEYS) +
		(np->num_rx_rings * NUM_RXCHAN_STAT_KEYS) +
		(np->num_tx_rings * NUM_TXCHAN_STAT_KEYS));
}