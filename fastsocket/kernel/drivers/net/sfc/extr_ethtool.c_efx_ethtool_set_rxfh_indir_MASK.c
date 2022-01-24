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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct efx_nic {int /*<<< orphan*/  rx_indir_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 struct efx_nic* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *net_dev,
				      const u32 *indir)
{
	struct efx_nic *efx = FUNC2(net_dev);
	
	FUNC1(efx->rx_indir_table, indir, sizeof(efx->rx_indir_table));
	FUNC0(efx);
	return 0;
}