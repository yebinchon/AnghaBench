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
struct drm_gem_object {struct dma_buf* export_dma_buf; } ;
struct dma_buf {struct drm_gem_object* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC1(struct dma_buf *dma_buf)
{
	struct drm_gem_object *obj = dma_buf->priv;

	if (obj->export_dma_buf == dma_buf) {
		/* drop the reference on the export fd holds */
		obj->export_dma_buf = NULL;
		FUNC0(obj);
	}
}