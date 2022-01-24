#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tx_energy_detection; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_cca_threshold; } ;
struct TYPE_6__ {TYPE_2__ tx; TYPE_1__ rx; } ;
struct wl1271 {TYPE_3__ conf; } ;
struct acx_energy_detection {int /*<<< orphan*/  tx_energy_detection; int /*<<< orphan*/  rx_cca_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CCA_THRESHOLD ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_energy_detection*) ; 
 struct acx_energy_detection* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_energy_detection*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct acx_energy_detection *detection;
	int ret;

	FUNC4(DEBUG_ACX, "acx cca threshold");

	detection = FUNC2(sizeof(*detection), GFP_KERNEL);
	if (!detection) {
		ret = -ENOMEM;
		goto out;
	}

	detection->rx_cca_threshold = FUNC0(wl->conf.rx.rx_cca_threshold);
	detection->tx_energy_detection = wl->conf.tx.tx_energy_detection;

	ret = FUNC3(wl, ACX_CCA_THRESHOLD,
				   detection, sizeof(*detection));
	if (ret < 0)
		FUNC5("failed to set cca threshold: %d", ret);

out:
	FUNC1(detection);
	return ret;
}