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
struct wl1251 {int /*<<< orphan*/  (* set_power ) (int) ;} ;
struct sdio_func {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct sdio_func* FUNC8 (struct wl1251*) ; 

__attribute__((used)) static int FUNC9(struct wl1251 *wl, bool enable)
{
	struct sdio_func *func = FUNC8(wl);
	int ret;

	if (enable) {
		/*
		 * Power is controlled by runtime PM, but we still call board
		 * callback in case it wants to do any additional setup,
		 * for example enabling clock buffer for the module.
		 */
		if (wl->set_power)
			wl->set_power(true);

		ret = FUNC0(&func->dev);
		if (ret < 0) {
			FUNC1(&func->dev);
			goto out;
		}

		FUNC2(func);
		FUNC4(func);
		FUNC5(func);
	} else {
		FUNC2(func);
		FUNC3(func);
		FUNC5(func);

		ret = FUNC1(&func->dev);
		if (ret < 0)
			goto out;

		if (wl->set_power)
			wl->set_power(false);
	}

out:
	return ret;
}