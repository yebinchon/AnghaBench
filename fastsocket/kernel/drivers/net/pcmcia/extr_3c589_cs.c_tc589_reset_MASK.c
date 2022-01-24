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
struct net_device {unsigned int base_addr; int /*<<< orphan*/  if_port; int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int AckIntr ; 
 int AdapterFailure ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EL3_CMD ; 
 int IntLatch ; 
 int IntReq ; 
 int RxComplete ; 
 int RxEarly ; 
 int RxEnable ; 
 int SetIntrEnb ; 
 int SetStatusEnb ; 
 int StatsDisable ; 
 int StatsEnable ; 
 int StatsFull ; 
 int TxAvailable ; 
 int TxEnable ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    int i;
    
    FUNC0(0);
    FUNC4(0x0001, ioaddr + 4);			/* Activate board. */ 
    FUNC4(0x3f00, ioaddr + 8);			/* Set the IRQ line. */
    
    /* Set the station address in window 2. */
    FUNC0(2);
    for (i = 0; i < 6; i++)
	FUNC3(dev->dev_addr[i], ioaddr + i);

    FUNC6(dev, dev->if_port);
    
    /* Switch to the stats window, and clear all stats by reading. */
    FUNC4(StatsDisable, ioaddr + EL3_CMD);
    FUNC0(6);
    for (i = 0; i < 9; i++)
	FUNC1(ioaddr+i);
    FUNC2(ioaddr + 10);
    FUNC2(ioaddr + 12);
    
    /* Switch to register set 1 for normal use. */
    FUNC0(1);

    FUNC5(dev);
    FUNC4(StatsEnable, ioaddr + EL3_CMD); /* Turn on statistics. */
    FUNC4(RxEnable, ioaddr + EL3_CMD); /* Enable the receiver. */
    FUNC4(TxEnable, ioaddr + EL3_CMD); /* Enable transmitter. */
    /* Allow status bits to be seen. */
    FUNC4(SetStatusEnb | 0xff, ioaddr + EL3_CMD);
    /* Ack all pending events, and set active indicator mask. */
    FUNC4(AckIntr | IntLatch | TxAvailable | RxEarly | IntReq,
	 ioaddr + EL3_CMD);
    FUNC4(SetIntrEnb | IntLatch | TxAvailable | RxComplete | StatsFull
	 | AdapterFailure, ioaddr + EL3_CMD);
}