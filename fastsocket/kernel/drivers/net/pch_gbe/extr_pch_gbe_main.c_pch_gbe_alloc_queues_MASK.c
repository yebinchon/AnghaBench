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
struct pch_gbe_adapter {void* tx_ring; void* rx_ring; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pch_gbe_adapter *adapter)
{
	adapter->tx_ring = FUNC1(sizeof(*adapter->tx_ring), GFP_KERNEL);
	if (!adapter->tx_ring)
		return -ENOMEM;

	adapter->rx_ring = FUNC1(sizeof(*adapter->rx_ring), GFP_KERNEL);
	if (!adapter->rx_ring) {
		FUNC0(adapter->tx_ring);
		return -ENOMEM;
	}
	return 0;
}