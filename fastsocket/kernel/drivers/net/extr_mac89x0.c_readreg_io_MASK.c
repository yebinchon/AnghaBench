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
struct net_device {scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ ADD_PORT ; 
 scalar_t__ DATA_PORT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline int
FUNC3(struct net_device *dev, int portno)
{
	FUNC1(FUNC2(portno), dev->base_addr + ADD_PORT);
	return FUNC2(FUNC0(dev->base_addr + DATA_PORT));
}