#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int base_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  ULTRA32_IO_EXTENT ; 
 int ULTRA32_NIC_OFFSET ; 
 TYPE_1__ ei_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	int ioaddr = dev->base_addr - ULTRA32_NIC_OFFSET;
	/* NB: ultra32_close_card() does free_irq */
	FUNC1(ioaddr, ULTRA32_IO_EXTENT);
	FUNC0(ei_status.mem);
}