#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_10__ {scalar_t__ gart_buffers_offset; TYPE_1__* blit_vb; } ;
typedef  TYPE_2__ drm_radeon_private_t ;
struct TYPE_9__ {scalar_t__ used; scalar_t__ total; scalar_t__ offset; } ;

/* Variables and functions */
 int COLOR_5_6_5 ; 
 int COLOR_8 ; 
 int COLOR_8_8_8_8 ; 
 int FMT_5_6_5 ; 
 int FMT_8 ; 
 int FMT_8_8_8_8 ; 
 int R600_CB0_DEST_BASE_ENA ; 
 int R600_CB_ACTION_ENA ; 
 int R600_TC_ACTION_ENA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/ * FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 

void
FUNC11(struct drm_device *dev,
	       uint64_t src_gpu_addr, uint64_t dst_gpu_addr,
	       int sx, int sy, int dx, int dy,
	       int w, int h, int src_pitch, int dst_pitch, int cpp)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	int cb_format, tex_format;
	int sx2, sy2, dx2, dy2;
	u64 vb_addr;
	u32 *vb;

	if ((dev_priv->blit_vb->used + 48) > dev_priv->blit_vb->total) {

		FUNC5(dev);
		FUNC3(dev);
		if (!dev_priv->blit_vb)
			return;

		FUNC8(dev);
	}
	vb = FUNC4(dev);

	sx2 = sx + w;
	sy2 = sy + h;
	dx2 = dx + w;
	dy2 = dy + h;

	vb[0] = FUNC2(dx);
	vb[1] = FUNC2(dy);
	vb[2] = FUNC2(sx);
	vb[3] = FUNC2(sy);

	vb[4] = FUNC2(dx);
	vb[5] = FUNC2(dy2);
	vb[6] = FUNC2(sx);
	vb[7] = FUNC2(sy2);

	vb[8] = FUNC2(dx2);
	vb[9] = FUNC2(dy2);
	vb[10] = FUNC2(sx2);
	vb[11] = FUNC2(sy2);

	switch(cpp) {
	case 4:
		cb_format = COLOR_8_8_8_8;
		tex_format = FMT_8_8_8_8;
		break;
	case 2:
		cb_format = COLOR_5_6_5;
		tex_format = FMT_5_6_5;
		break;
	default:
		cb_format = COLOR_8;
		tex_format = FMT_8;
		break;
	}

	/* src */
	FUNC9(dev_priv, tex_format,
			 src_pitch / cpp,
			 sy2, src_pitch / cpp,
			 src_gpu_addr);

	FUNC0(dev_priv,
			    R600_TC_ACTION_ENA, src_pitch * sy2, src_gpu_addr);

	/* dst */
	FUNC6(dev_priv, cb_format,
			  dst_pitch / cpp, dy2,
			  dst_gpu_addr);

	/* scissors */
	FUNC7(dev_priv, dx, dy, dx2, dy2);

	/* Vertex buffer setup */
	vb_addr = dev_priv->gart_buffers_offset +
		dev_priv->blit_vb->offset +
		dev_priv->blit_vb->used;
	FUNC10(dev_priv, vb_addr);

	/* draw */
	FUNC1(dev_priv);

	FUNC0(dev_priv,
			    R600_CB_ACTION_ENA | R600_CB0_DEST_BASE_ENA,
			    dst_pitch * dy2, dst_gpu_addr);

	dev_priv->blit_vb->used += 12 * 4;
}