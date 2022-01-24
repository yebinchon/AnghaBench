#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct vm_area_struct *vma)
{
	struct drm_gem_object *obj = vma->vm_private_data;

	FUNC0(obj);

	FUNC2(&obj->dev->struct_mutex);
	FUNC1(obj->dev, vma);
	FUNC3(&obj->dev->struct_mutex);
}