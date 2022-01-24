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
typedef  int /*<<< orphan*/  u_int ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	u_int ioaddr = dev->base_addr;

	return FUNC1() + (FUNC0()<<8);
}