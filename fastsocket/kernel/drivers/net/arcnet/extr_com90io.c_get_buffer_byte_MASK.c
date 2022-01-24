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
typedef  int /*<<< orphan*/  u_char ;
struct net_device {int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  _ADDR_HI ; 
 int /*<<< orphan*/  _ADDR_LO ; 
 int /*<<< orphan*/  _MEMDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_char FUNC2(struct net_device *dev, unsigned offset)
{
	int ioaddr = dev->base_addr;

	FUNC1(offset >> 8, _ADDR_HI);
	FUNC1(offset & 0xff, _ADDR_LO);

	return FUNC0(_MEMDATA);
}