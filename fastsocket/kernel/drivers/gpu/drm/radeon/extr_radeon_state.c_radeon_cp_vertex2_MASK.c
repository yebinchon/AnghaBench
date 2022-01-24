#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct drm_radeon_master_private {TYPE_4__* sarea_priv; } ;
struct drm_file {TYPE_8__* master; } ;
struct drm_device_dma {size_t buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; int /*<<< orphan*/ * dev_private; } ;
struct drm_buf {scalar_t__ pending; struct drm_file* file_priv; } ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  prim ;
struct TYPE_12__ {size_t idx; int nr_prims; scalar_t__ discard; int /*<<< orphan*/ * state; int /*<<< orphan*/ * prim; } ;
typedef  TYPE_1__ drm_radeon_vertex2_t ;
struct TYPE_13__ {int prim; int offset; int numverts; int /*<<< orphan*/  vc_format; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; } ;
typedef  TYPE_2__ drm_radeon_tcl_prim_t ;
struct TYPE_14__ {unsigned char stateidx; int prim; int numverts; int /*<<< orphan*/  vc_format; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; } ;
typedef  TYPE_3__ drm_radeon_state_t ;
struct TYPE_15__ {int nbox; } ;
typedef  TYPE_4__ drm_radeon_sarea_t ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
typedef  TYPE_3__ drm_radeon_prim_t ;
struct TYPE_16__ {struct drm_radeon_master_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DRM_CURRENTPID ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_file*) ; 
 int RADEON_MAX_VB_VERTS ; 
 int RADEON_NR_SAREA_CLIPRECTS ; 
 int RADEON_PRIM_WALK_IND ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,TYPE_8__*,struct drm_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,TYPE_8__*,struct drm_buf*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,struct drm_file*,struct drm_buf*,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct drm_file*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC11(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	struct drm_radeon_master_private *master_priv = file_priv->master->driver_priv;
	drm_radeon_sarea_t *sarea_priv;
	struct drm_device_dma *dma = dev->dma;
	struct drm_buf *buf;
	drm_radeon_vertex2_t *vertex = data;
	int i;
	unsigned char laststate;

	FUNC4(dev, file_priv);

	sarea_priv = master_priv->sarea_priv;

	FUNC2("pid=%d index=%d discard=%d\n",
		  DRM_CURRENTPID, vertex->idx, vertex->discard);

	if (vertex->idx < 0 || vertex->idx >= dma->buf_count) {
		FUNC3("buffer index %d (of %d max)\n",
			  vertex->idx, dma->buf_count - 1);
		return -EINVAL;
	}

	FUNC5(dev_priv);
	FUNC6(dev_priv);

	buf = dma->buflist[vertex->idx];

	if (buf->file_priv != file_priv) {
		FUNC3("process %d using buffer owned by %p\n",
			  DRM_CURRENTPID, buf->file_priv);
		return -EINVAL;
	}

	if (buf->pending) {
		FUNC3("sending pending buffer %d\n", vertex->idx);
		return -EINVAL;
	}

	if (sarea_priv->nbox > RADEON_NR_SAREA_CLIPRECTS)
		return -EINVAL;

	for (laststate = 0xff, i = 0; i < vertex->nr_prims; i++) {
		drm_radeon_prim_t prim;
		drm_radeon_tcl_prim_t tclprim;

		if (FUNC1(&prim, &vertex->prim[i], sizeof(prim)))
			return -EFAULT;

		if (prim.stateidx != laststate) {
			drm_radeon_state_t state;

			if (FUNC1(&state,
					       &vertex->state[prim.stateidx],
					       sizeof(state)))
				return -EFAULT;

			if (FUNC10(dev_priv, file_priv, &state)) {
				FUNC3("radeon_emit_state2 failed\n");
				return -EINVAL;
			}

			laststate = prim.stateidx;
		}

		tclprim.start = prim.start;
		tclprim.finish = prim.finish;
		tclprim.prim = prim.prim;
		tclprim.vc_format = prim.vc_format;

		if (prim.prim & RADEON_PRIM_WALK_IND) {
			tclprim.offset = prim.numverts * 64;
			tclprim.numverts = RADEON_MAX_VB_VERTS;	/* duh */

			FUNC8(dev, file_priv->master, buf, &tclprim);
		} else {
			tclprim.numverts = prim.numverts;
			tclprim.offset = 0;	/* not used */

			FUNC9(dev, file_priv, buf, &tclprim);
		}

		if (sarea_priv->nbox == 1)
			sarea_priv->nbox = 0;
	}

	if (vertex->discard) {
		FUNC7(dev, file_priv->master, buf);
	}

	FUNC0();
	return 0;
}