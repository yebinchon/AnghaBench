#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device_dma {size_t buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; int /*<<< orphan*/ * dev_private; } ;
struct drm_buf {int /*<<< orphan*/  used; scalar_t__ pending; struct drm_file* file_priv; TYPE_2__* dev_private; } ;
struct TYPE_3__ {size_t idx; scalar_t__ prim; int /*<<< orphan*/  discard; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ drm_r128_vertex_t ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;
struct TYPE_4__ {size_t prim; int /*<<< orphan*/  discard; } ;
typedef  TYPE_2__ drm_r128_buf_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DRM_CURRENTPID ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_file*) ; 
 scalar_t__ R128_CCE_VC_CNTL_PRIM_TYPE_TRI_TYPE2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_buf*) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	struct drm_device_dma *dma = dev->dma;
	struct drm_buf *buf;
	drm_r128_buf_priv_t *buf_priv;
	drm_r128_vertex_t *vertex = data;

	FUNC4(dev, file_priv);

	FUNC1(dev_priv);

	FUNC2("pid=%d index=%d count=%d discard=%d\n",
		  DRM_CURRENTPID, vertex->idx, vertex->count, vertex->discard);

	if (vertex->idx < 0 || vertex->idx >= dma->buf_count) {
		FUNC3("buffer index %d (of %d max)\n",
			  vertex->idx, dma->buf_count - 1);
		return -EINVAL;
	}
	if (vertex->prim < 0 ||
	    vertex->prim > R128_CCE_VC_CNTL_PRIM_TYPE_TRI_TYPE2) {
		FUNC3("buffer prim %d\n", vertex->prim);
		return -EINVAL;
	}

	FUNC5(dev_priv);
	FUNC6(dev_priv);

	buf = dma->buflist[vertex->idx];
	buf_priv = buf->dev_private;

	if (buf->file_priv != file_priv) {
		FUNC3("process %d using buffer owned by %p\n",
			  DRM_CURRENTPID, buf->file_priv);
		return -EINVAL;
	}
	if (buf->pending) {
		FUNC3("sending pending buffer %d\n", vertex->idx);
		return -EINVAL;
	}

	buf->used = vertex->count;
	buf_priv->prim = vertex->prim;
	buf_priv->discard = vertex->discard;

	FUNC7(dev, buf);

	FUNC0();
	return 0;
}