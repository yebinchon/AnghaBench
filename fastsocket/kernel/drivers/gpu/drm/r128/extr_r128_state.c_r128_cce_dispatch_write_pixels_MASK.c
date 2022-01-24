#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int depth_fmt; int depth_pitch_offset_c; } ;
typedef  TYPE_1__ drm_r128_private_t ;
struct TYPE_5__ {int n; scalar_t__ mask; scalar_t__ buffer; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_2__ drm_r128_depth_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int EFAULT ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  R128_CNTL_PAINT_MULTI ; 
 int R128_GMC_BRUSH_SOLID_COLOR ; 
 int R128_GMC_CLR_CMP_CNTL_DIS ; 
 int R128_GMC_DST_PITCH_OFFSET_CNTL ; 
 int R128_GMC_SRC_DATATYPE_COLOR ; 
 int R128_GMC_WR_MSK_DIS ; 
 int R128_ROP3_P ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev,
					  drm_r128_depth_t *depth)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	int count, *x, *y;
	u32 *buffer;
	u8 *mask;
	int i, xbuf_size, ybuf_size, buffer_size, mask_size;
	RING_LOCALS;
	FUNC4("\n");

	count = depth->n;
	if (count > 4096 || count <= 0)
		return -EMSGSIZE;

	xbuf_size = count * sizeof(*x);
	ybuf_size = count * sizeof(*y);
	x = FUNC7(xbuf_size, GFP_KERNEL);
	if (x == NULL)
		return -ENOMEM;
	y = FUNC7(ybuf_size, GFP_KERNEL);
	if (y == NULL) {
		FUNC6(x);
		return -ENOMEM;
	}
	if (FUNC3(x, depth->x, xbuf_size)) {
		FUNC6(x);
		FUNC6(y);
		return -EFAULT;
	}
	if (FUNC3(y, depth->y, xbuf_size)) {
		FUNC6(x);
		FUNC6(y);
		return -EFAULT;
	}

	buffer_size = depth->n * sizeof(u32);
	buffer = FUNC7(buffer_size, GFP_KERNEL);
	if (buffer == NULL) {
		FUNC6(x);
		FUNC6(y);
		return -ENOMEM;
	}
	if (FUNC3(buffer, depth->buffer, buffer_size)) {
		FUNC6(x);
		FUNC6(y);
		FUNC6(buffer);
		return -EFAULT;
	}

	if (depth->mask) {
		mask_size = depth->n * sizeof(u8);
		mask = FUNC7(mask_size, GFP_KERNEL);
		if (mask == NULL) {
			FUNC6(x);
			FUNC6(y);
			FUNC6(buffer);
			return -ENOMEM;
		}
		if (FUNC3(mask, depth->mask, mask_size)) {
			FUNC6(x);
			FUNC6(y);
			FUNC6(buffer);
			FUNC6(mask);
			return -EFAULT;
		}

		for (i = 0; i < count; i++) {
			if (mask[i]) {
				FUNC1(6);

				FUNC5(FUNC2(R128_CNTL_PAINT_MULTI, 4));
				FUNC5(R128_GMC_DST_PITCH_OFFSET_CNTL |
					 R128_GMC_BRUSH_SOLID_COLOR |
					 (dev_priv->depth_fmt << 8) |
					 R128_GMC_SRC_DATATYPE_COLOR |
					 R128_ROP3_P |
					 R128_GMC_CLR_CMP_CNTL_DIS |
					 R128_GMC_WR_MSK_DIS);

				FUNC5(dev_priv->depth_pitch_offset_c);
				FUNC5(buffer[i]);

				FUNC5((x[i] << 16) | y[i]);
				FUNC5((1 << 16) | 1);

				FUNC0();
			}
		}

		FUNC6(mask);
	} else {
		for (i = 0; i < count; i++) {
			FUNC1(6);

			FUNC5(FUNC2(R128_CNTL_PAINT_MULTI, 4));
			FUNC5(R128_GMC_DST_PITCH_OFFSET_CNTL |
				 R128_GMC_BRUSH_SOLID_COLOR |
				 (dev_priv->depth_fmt << 8) |
				 R128_GMC_SRC_DATATYPE_COLOR |
				 R128_ROP3_P |
				 R128_GMC_CLR_CMP_CNTL_DIS |
				 R128_GMC_WR_MSK_DIS);

			FUNC5(dev_priv->depth_pitch_offset_c);
			FUNC5(buffer[i]);

			FUNC5((x[i] << 16) | y[i]);
			FUNC5((1 << 16) | 1);

			FUNC0();
		}
	}

	FUNC6(x);
	FUNC6(y);
	FUNC6(buffer);

	return 0;
}