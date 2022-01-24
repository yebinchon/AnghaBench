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
struct vm_area_struct {int dummy; } ;
struct gru_vma_data {int /*<<< orphan*/  vd_lock; int /*<<< orphan*/  vd_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct gru_vma_data*) ; 
 int /*<<< orphan*/  grudev ; 
 struct gru_vma_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vdata_alloc ; 

struct gru_vma_data *FUNC5(struct vm_area_struct *vma, int tsid)
{
	struct gru_vma_data *vdata = NULL;

	vdata = FUNC3(sizeof(*vdata), GFP_KERNEL);
	if (!vdata)
		return NULL;

	FUNC1(vdata_alloc);
	FUNC0(&vdata->vd_head);
	FUNC4(&vdata->vd_lock);
	FUNC2(grudev, "alloc vdata %p\n", vdata);
	return vdata;
}