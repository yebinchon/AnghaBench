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
typedef  int uint64_t ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_10__ {scalar_t__ gart_buffers_offset; TYPE_1__* blit_vb; } ;
typedef  TYPE_2__ drm_radeon_private_t ;
struct TYPE_9__ {scalar_t__ used; scalar_t__ total; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_8 ; 
 int /*<<< orphan*/  COLOR_8_8_8_8 ; 
 int /*<<< orphan*/  FMT_8 ; 
 int /*<<< orphan*/  FMT_8_8_8_8 ; 
 int R600_CB0_DEST_BASE_ENA ; 
 int R600_CB_ACTION_ENA ; 
 int R600_TC_ACTION_ENA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/ * FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 

void
FUNC11(struct drm_device *dev,
	       uint64_t src_gpu_addr, uint64_t dst_gpu_addr,
	       int size_bytes)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	int max_bytes;
	u64 vb_addr;
	u32 *vb;

	vb = FUNC4(dev);

	if ((size_bytes & 3) || (src_gpu_addr & 3) || (dst_gpu_addr & 3)) {
		max_bytes = 8192;

		while (size_bytes) {
			int cur_size = size_bytes;
			int src_x = src_gpu_addr & 255;
			int dst_x = dst_gpu_addr & 255;
			int h = 1;
			src_gpu_addr = src_gpu_addr & ~255;
			dst_gpu_addr = dst_gpu_addr & ~255;

			if (!src_x && !dst_x) {
				h = (cur_size / max_bytes);
				if (h > 8192)
					h = 8192;
				if (h == 0)
					h = 1;
				else
					cur_size = max_bytes;
			} else {
				if (cur_size > max_bytes)
					cur_size = max_bytes;
				if (cur_size > (max_bytes - dst_x))
					cur_size = (max_bytes - dst_x);
				if (cur_size > (max_bytes - src_x))
					cur_size = (max_bytes - src_x);
			}

			if ((dev_priv->blit_vb->used + 48) > dev_priv->blit_vb->total) {

				FUNC5(dev);
				FUNC3(dev);
				if (!dev_priv->blit_vb)
					return;
				FUNC8(dev);
				vb = FUNC4(dev);
			}

			vb[0] = FUNC2(dst_x);
			vb[1] = 0;
			vb[2] = FUNC2(src_x);
			vb[3] = 0;

			vb[4] = FUNC2(dst_x);
			vb[5] = FUNC2(h);
			vb[6] = FUNC2(src_x);
			vb[7] = FUNC2(h);

			vb[8] = FUNC2(dst_x + cur_size);
			vb[9] = FUNC2(h);
			vb[10] = FUNC2(src_x + cur_size);
			vb[11] = FUNC2(h);

			/* src */
			FUNC9(dev_priv, FMT_8,
					 src_x + cur_size, h, src_x + cur_size,
					 src_gpu_addr);

			FUNC0(dev_priv,
					    R600_TC_ACTION_ENA, (src_x + cur_size * h), src_gpu_addr);

			/* dst */
			FUNC6(dev_priv, COLOR_8,
					  dst_x + cur_size, h,
					  dst_gpu_addr);

			/* scissors */
			FUNC7(dev_priv, dst_x, 0, dst_x + cur_size, h);

			/* Vertex buffer setup */
			vb_addr = dev_priv->gart_buffers_offset +
				dev_priv->blit_vb->offset +
				dev_priv->blit_vb->used;
			FUNC10(dev_priv, vb_addr);

			/* draw */
			FUNC1(dev_priv);

			FUNC0(dev_priv,
					    R600_CB_ACTION_ENA | R600_CB0_DEST_BASE_ENA,
					    cur_size * h, dst_gpu_addr);

			vb += 12;
			dev_priv->blit_vb->used += 12 * 4;

			src_gpu_addr += cur_size * h;
			dst_gpu_addr += cur_size * h;
			size_bytes -= cur_size * h;
		}
	} else {
		max_bytes = 8192 * 4;

		while (size_bytes) {
			int cur_size = size_bytes;
			int src_x = (src_gpu_addr & 255);
			int dst_x = (dst_gpu_addr & 255);
			int h = 1;
			src_gpu_addr = src_gpu_addr & ~255;
			dst_gpu_addr = dst_gpu_addr & ~255;

			if (!src_x && !dst_x) {
				h = (cur_size / max_bytes);
				if (h > 8192)
					h = 8192;
				if (h == 0)
					h = 1;
				else
					cur_size = max_bytes;
			} else {
				if (cur_size > max_bytes)
					cur_size = max_bytes;
				if (cur_size > (max_bytes - dst_x))
					cur_size = (max_bytes - dst_x);
				if (cur_size > (max_bytes - src_x))
					cur_size = (max_bytes - src_x);
			}

			if ((dev_priv->blit_vb->used + 48) > dev_priv->blit_vb->total) {
				FUNC5(dev);
				FUNC3(dev);
				if (!dev_priv->blit_vb)
					return;

				FUNC8(dev);
				vb = FUNC4(dev);
			}

			vb[0] = FUNC2(dst_x / 4);
			vb[1] = 0;
			vb[2] = FUNC2(src_x / 4);
			vb[3] = 0;

			vb[4] = FUNC2(dst_x / 4);
			vb[5] = FUNC2(h);
			vb[6] = FUNC2(src_x / 4);
			vb[7] = FUNC2(h);

			vb[8] = FUNC2((dst_x + cur_size) / 4);
			vb[9] = FUNC2(h);
			vb[10] = FUNC2((src_x + cur_size) / 4);
			vb[11] = FUNC2(h);

			/* src */
			FUNC9(dev_priv, FMT_8_8_8_8,
					 (src_x + cur_size) / 4,
					 h, (src_x + cur_size) / 4,
					 src_gpu_addr);

			FUNC0(dev_priv,
					    R600_TC_ACTION_ENA, (src_x + cur_size * h), src_gpu_addr);

			/* dst */
			FUNC6(dev_priv, COLOR_8_8_8_8,
					  (dst_x + cur_size) / 4, h,
					  dst_gpu_addr);

			/* scissors */
			FUNC7(dev_priv, (dst_x / 4), 0, (dst_x + cur_size / 4), h);

			/* Vertex buffer setup */
			vb_addr = dev_priv->gart_buffers_offset +
				dev_priv->blit_vb->offset +
				dev_priv->blit_vb->used;
			FUNC10(dev_priv, vb_addr);

			/* draw */
			FUNC1(dev_priv);

			FUNC0(dev_priv,
					    R600_CB_ACTION_ENA | R600_CB0_DEST_BASE_ENA,
					    cur_size * h, dst_gpu_addr);

			vb += 12;
			dev_priv->blit_vb->used += 12 * 4;

			src_gpu_addr += cur_size * h;
			dst_gpu_addr += cur_size * h;
			size_bytes -= cur_size * h;
		}
	}
}