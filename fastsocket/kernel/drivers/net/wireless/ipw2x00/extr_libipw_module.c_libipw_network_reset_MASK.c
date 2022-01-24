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
struct libipw_network {int /*<<< orphan*/ * ibss_dfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct libipw_network *network)
{
	if (!network)
		return;

	if (network->ibss_dfs) {
		FUNC0(network->ibss_dfs);
		network->ibss_dfs = NULL;
	}
}