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
struct wl1271 {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; scalar_t__ irq_wake_enabled; int /*<<< orphan*/  initialized; int /*<<< orphan*/  nvs_loading_complete; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wl1271*) ; 
 struct wl1271* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 

int FUNC7(struct platform_device *pdev)
{
	struct wl1271 *wl = FUNC3(pdev);

	FUNC4(&wl->nvs_loading_complete);
	if (!wl->initialized)
		return 0;

	if (wl->irq_wake_enabled) {
		FUNC0(wl->dev, 0);
		FUNC1(wl->irq);
	}
	FUNC5(wl);
	FUNC2(wl->irq, wl);
	FUNC6(wl);

	return 0;
}