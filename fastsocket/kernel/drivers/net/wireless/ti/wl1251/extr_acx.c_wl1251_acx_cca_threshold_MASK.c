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
struct wl1251 {int dummy; } ;
struct acx_energy_detection {scalar_t__ tx_energy_detection; int /*<<< orphan*/  rx_cca_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CCA_THRESHOLD ; 
 int /*<<< orphan*/  CCA_THRSH_DISABLE_ENERGY_D ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_energy_detection*) ; 
 struct acx_energy_detection* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_energy_detection*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl)
{
	struct acx_energy_detection *detection;
	int ret;

	FUNC3(DEBUG_ACX, "acx cca threshold");

	detection = FUNC1(sizeof(*detection), GFP_KERNEL);
	if (!detection) {
		ret = -ENOMEM;
		goto out;
	}

	detection->rx_cca_threshold = CCA_THRSH_DISABLE_ENERGY_D;
	detection->tx_energy_detection = 0;

	ret = FUNC2(wl, ACX_CCA_THRESHOLD,
				   detection, sizeof(*detection));
	if (ret < 0)
		FUNC4("failed to set cca threshold: %d", ret);

out:
	FUNC0(detection);
	return ret;
}