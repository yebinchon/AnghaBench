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
struct net_device {int* dev_addr; scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ MAHR ; 
 scalar_t__ MALR ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct net_device *ndev)
{
	u32 ioaddr = ndev->base_addr;

	ndev->dev_addr[0] = (FUNC0(ioaddr + MAHR) >> 24);
	ndev->dev_addr[1] = (FUNC0(ioaddr + MAHR) >> 16) & 0xFF;
	ndev->dev_addr[2] = (FUNC0(ioaddr + MAHR) >> 8) & 0xFF;
	ndev->dev_addr[3] = (FUNC0(ioaddr + MAHR) & 0xFF);
	ndev->dev_addr[4] = (FUNC0(ioaddr + MALR) >> 8) & 0xFF;
	ndev->dev_addr[5] = (FUNC0(ioaddr + MALR) & 0xFF);
}