#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct drm_radeon_master_private {TYPE_2__* sarea_priv; } ;
struct drm_file {TYPE_4__* master; } ;
struct drm_device_dma {size_t buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; int /*<<< orphan*/ * dev_private; } ;
struct drm_buf {int used; scalar_t__ pending; struct drm_file* file_priv; } ;
struct TYPE_7__ {int start; int finish; scalar_t__ prim; int /*<<< orphan*/  vc_format; int /*<<< orphan*/  numverts; scalar_t__ offset; } ;
typedef  TYPE_1__ drm_radeon_tcl_prim_t ;
struct TYPE_8__ {int dirty; int /*<<< orphan*/  vc_format; int /*<<< orphan*/  tex_state; int /*<<< orphan*/  context_state; } ;
typedef  TYPE_2__ drm_radeon_sarea_t ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_9__ {size_t idx; int start; int end; scalar_t__ prim; scalar_t__ discard; } ;
typedef  TYPE_3__ drm_radeon_indices_t ;
struct TYPE_10__ {struct drm_radeon_master_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DRM_CURRENTPID ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*) ; 
 scalar_t__ RADEON_INDEX_PRIM_OFFSET ; 
 int /*<<< orphan*/  RADEON_MAX_VB_VERTS ; 
 scalar_t__ RADEON_PRIM_TYPE_3VRT_LINE_LIST ; 
 int RADEON_REQUIRE_QUIESCENCE ; 
 int RADEON_UPLOAD_CLIPRECTS ; 
 int RADEON_UPLOAD_TEX0IMAGES ; 
 int RADEON_UPLOAD_TEX1IMAGES ; 
 int RADEON_UPLOAD_TEX2IMAGES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,TYPE_4__*,struct drm_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,TYPE_4__*,struct drm_buf*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	struct drm_radeon_master_private *master_priv = file_priv->master->driver_priv;
	drm_radeon_sarea_t *sarea_priv;
	struct drm_device_dma *dma = dev->dma;
	struct drm_buf *buf;
	drm_radeon_indices_t *elts = data;
	drm_radeon_tcl_prim_t prim;
	int count;

	FUNC3(dev, file_priv);

	sarea_priv = master_priv->sarea_priv;

	FUNC1("pid=%d index=%d start=%d end=%d discard=%d\n",
		  DRM_CURRENTPID, elts->idx, elts->start, elts->end,
		  elts->discard);

	if (elts->idx < 0 || elts->idx >= dma->buf_count) {
		FUNC2("buffer index %d (of %d max)\n",
			  elts->idx, dma->buf_count - 1);
		return -EINVAL;
	}
	if (elts->prim < 0 || elts->prim > RADEON_PRIM_TYPE_3VRT_LINE_LIST) {
		FUNC2("buffer prim %d\n", elts->prim);
		return -EINVAL;
	}

	FUNC4(dev_priv);
	FUNC5(dev_priv);

	buf = dma->buflist[elts->idx];

	if (buf->file_priv != file_priv) {
		FUNC2("process %d using buffer owned by %p\n",
			  DRM_CURRENTPID, buf->file_priv);
		return -EINVAL;
	}
	if (buf->pending) {
		FUNC2("sending pending buffer %d\n", elts->idx);
		return -EINVAL;
	}

	count = (elts->end - elts->start) / sizeof(u16);
	elts->start -= RADEON_INDEX_PRIM_OFFSET;

	if (elts->start & 0x7) {
		FUNC2("misaligned buffer 0x%x\n", elts->start);
		return -EINVAL;
	}
	if (elts->start < buf->used) {
		FUNC2("no header 0x%x - 0x%x\n", elts->start, buf->used);
		return -EINVAL;
	}

	buf->used = elts->end;

	if (sarea_priv->dirty & ~RADEON_UPLOAD_CLIPRECTS) {
		if (FUNC8(dev_priv, file_priv,
				      &sarea_priv->context_state,
				      sarea_priv->tex_state,
				      sarea_priv->dirty)) {
			FUNC2("radeon_emit_state failed\n");
			return -EINVAL;
		}

		sarea_priv->dirty &= ~(RADEON_UPLOAD_TEX0IMAGES |
				       RADEON_UPLOAD_TEX1IMAGES |
				       RADEON_UPLOAD_TEX2IMAGES |
				       RADEON_REQUIRE_QUIESCENCE);
	}

	/* Build up a prim_t record:
	 */
	prim.start = elts->start;
	prim.finish = elts->end;
	prim.prim = elts->prim;
	prim.offset = 0;	/* offset from start of dma buffers */
	prim.numverts = RADEON_MAX_VB_VERTS;	/* duh */
	prim.vc_format = sarea_priv->vc_format;

	FUNC7(dev, file_priv->master, buf, &prim);
	if (elts->discard) {
		FUNC6(dev, file_priv->master, buf);
	}

	FUNC0();
	return 0;
}