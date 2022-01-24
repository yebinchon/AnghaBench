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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct nes_vnic {scalar_t__ rx_checksum_disabled; } ;

/* Variables and functions */
 struct nes_vnic* FUNC0 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC1 (struct net_device *netdev)
{
	struct nes_vnic *nesvnic = FUNC0(netdev);

	if (nesvnic->rx_checksum_disabled)
		return 0;
	else
		return 1;
}