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
struct net_device {scalar_t__ base_addr; } ;
struct TYPE_2__ {unsigned char hcr_val; } ;
typedef  TYPE_1__ elp_device ;

/* Variables and functions */
 scalar_t__ PORT_CONTROL ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(unsigned char val, struct net_device *dev)
{
	FUNC1(val, dev->base_addr + PORT_CONTROL);
	((elp_device *)(FUNC0(dev)))->hcr_val = val;
}