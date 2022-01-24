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
struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ eedump_len; scalar_t__ regdump_len; scalar_t__ testinfo_len; int /*<<< orphan*/  n_stats; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct bdx_priv {scalar_t__ stats_flag; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* BDX_DRV_NAME ; 
 char* BDX_DRV_VERSION ; 
 int /*<<< orphan*/  bdx_stat_names ; 
 struct bdx_priv* FUNC1 (struct net_device*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
	struct bdx_priv *priv = FUNC1(netdev);

	FUNC3(drvinfo->driver, BDX_DRV_NAME, sizeof(drvinfo->driver));
	FUNC3(drvinfo->version, BDX_DRV_VERSION, sizeof(drvinfo->version));
	FUNC3(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
	FUNC3(drvinfo->bus_info, FUNC2(priv->pdev),
		sizeof(drvinfo->bus_info));

	drvinfo->n_stats = ((priv->stats_flag) ? FUNC0(bdx_stat_names) : 0);
	drvinfo->testinfo_len = 0;
	drvinfo->regdump_len = 0;
	drvinfo->eedump_len = 0;
}