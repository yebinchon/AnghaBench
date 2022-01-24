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

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ EMAC_MTU_OVERHEAD ; 
 int EMAC_RX_SKB_HEADROOM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(int mtu)
{
	int size = FUNC2(mtu + EMAC_MTU_OVERHEAD, FUNC1(mtu));
	return FUNC0(size + 2) + EMAC_RX_SKB_HEADROOM;
}