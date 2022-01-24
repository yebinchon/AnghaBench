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
struct drm_gem_object {scalar_t__ export_dma_buf; TYPE_1__* import_attach; } ;
struct drm_file {int /*<<< orphan*/  prime; } ;
struct TYPE_2__ {scalar_t__ dmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct drm_gem_object *obj, struct drm_file *filp)
{
	if (obj->import_attach) {
		FUNC0(&filp->prime,
				obj->import_attach->dmabuf);
	}
	if (obj->export_dma_buf) {
		FUNC0(&filp->prime,
				obj->export_dma_buf);
	}
}