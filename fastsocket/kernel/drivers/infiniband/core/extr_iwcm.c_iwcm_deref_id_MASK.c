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
struct iwcm_id_private {int /*<<< orphan*/  destroy_comp; int /*<<< orphan*/  work_list; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iwcm_id_private *cm_id_priv)
{
	FUNC0(FUNC2(&cm_id_priv->refcount)==0);
	if (FUNC1(&cm_id_priv->refcount)) {
		FUNC0(!FUNC4(&cm_id_priv->work_list));
		FUNC3(&cm_id_priv->destroy_comp);
		return 1;
	}

	return 0;
}