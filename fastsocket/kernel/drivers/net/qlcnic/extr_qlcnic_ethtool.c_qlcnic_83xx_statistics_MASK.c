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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlcnic_83xx_mac_stats_strings ; 
 int /*<<< orphan*/  qlcnic_83xx_rx_stats_strings ; 
 int /*<<< orphan*/  qlcnic_83xx_tx_stats_strings ; 

__attribute__((used)) static inline int FUNC1(void)
{
	return FUNC0(qlcnic_83xx_tx_stats_strings) +
	       FUNC0(qlcnic_83xx_mac_stats_strings) +
	       FUNC0(qlcnic_83xx_rx_stats_strings);
}