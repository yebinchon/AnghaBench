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
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct smc_private {int /*<<< orphan*/  lock; } ;
struct net_device {unsigned int base_addr; int flags; int /*<<< orphan*/  mc_list; scalar_t__ mc_count; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ MULTICAST0 ; 
 scalar_t__ MULTICAST4 ; 
 scalar_t__ RCR ; 
 int RxAllMulti ; 
 int RxEnable ; 
 int RxPromisc ; 
 int RxStripCRC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct smc_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    struct smc_private *smc = FUNC2(dev);
    u_int multicast_table[ 2 ] = { 0, };
    unsigned long flags;
    u_short rx_cfg_setting;

    if (dev->flags & IFF_PROMISC) {
	rx_cfg_setting = RxStripCRC | RxEnable | RxPromisc | RxAllMulti;
    } else if (dev->flags & IFF_ALLMULTI)
	rx_cfg_setting = RxStripCRC | RxEnable | RxAllMulti;
    else {
	if (dev->mc_count)  {
	    FUNC1(dev->mc_count, dev->mc_list,
			       (u_char *)multicast_table);
	}
	rx_cfg_setting = RxStripCRC | RxEnable;
    }

    /* Load MC table and Rx setting into the chip without interrupts. */
    FUNC5(&smc->lock, flags);
    FUNC0(3);
    FUNC3(multicast_table[0], ioaddr + MULTICAST0);
    FUNC3(multicast_table[1], ioaddr + MULTICAST4);
    FUNC0(0);
    FUNC4(rx_cfg_setting, ioaddr + RCR);
    FUNC0(2);
    FUNC6(&smc->lock, flags);

    return;
}