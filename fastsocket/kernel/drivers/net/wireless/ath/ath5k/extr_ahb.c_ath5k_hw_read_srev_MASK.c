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
struct TYPE_2__ {struct ar231x_board_config* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ath5k_hw {int /*<<< orphan*/  ah_mac_srev; int /*<<< orphan*/  dev; } ;
struct ar231x_board_config {int /*<<< orphan*/  devid; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct ath5k_hw *ah)
{
	struct platform_device *pdev = FUNC0(ah->dev);
	struct ar231x_board_config *bcfg = pdev->dev.platform_data;
	ah->ah_mac_srev = bcfg->devid;
	return 0;
}