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
struct tifm_adapter {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct tifm_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tifm_adapter_idr ; 
 int /*<<< orphan*/  tifm_adapter_lock ; 

int FUNC7(struct tifm_adapter *fm)
{
	int rc;

	if (!FUNC3(&tifm_adapter_idr, GFP_KERNEL))
		return -ENOMEM;

	FUNC5(&tifm_adapter_lock);
	rc = FUNC2(&tifm_adapter_idr, fm, &fm->id);
	FUNC6(&tifm_adapter_lock);
	if (rc)
		return rc;

	FUNC0(&fm->dev, "tifm%u", fm->id);
	rc = FUNC1(&fm->dev);
	if (rc) {
		FUNC5(&tifm_adapter_lock);
		FUNC4(&tifm_adapter_idr, fm->id);
		FUNC6(&tifm_adapter_lock);
	}

	return rc;
}