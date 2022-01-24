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
struct wl1251 {int /*<<< orphan*/ * data_path; } ;
struct acx_data_path_params_resp {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct wl1251 *wl)
{
	int ret;

	/* asking for the data path parameters */
	wl->data_path = FUNC1(sizeof(struct acx_data_path_params_resp),
				GFP_KERNEL);
	if (!wl->data_path) {
		FUNC3("Couldnt allocate data path parameters");
		return -ENOMEM;
	}

	ret = FUNC2(wl, wl->data_path);
	if (ret < 0) {
		FUNC0(wl->data_path);
		wl->data_path = NULL;
		return ret;
	}

	return 0;
}