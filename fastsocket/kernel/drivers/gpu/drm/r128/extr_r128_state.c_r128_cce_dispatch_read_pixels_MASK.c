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
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int depth_pitch; int depth_fmt; int depth_pitch_offset_c; int span_pitch_offset_c; } ;
typedef  TYPE_1__ drm_r128_private_t ;
struct TYPE_5__ {int n; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ drm_r128_depth_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int EFAULT ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  R128_CNTL_BITBLT_MULTI ; 
 int R128_DP_SRC_SOURCE_MEMORY ; 
 int R128_GMC_BRUSH_NONE ; 
 int R128_GMC_CLR_CMP_CNTL_DIS ; 
 int R128_GMC_DST_PITCH_OFFSET_CNTL ; 
 int R128_GMC_SRC_DATATYPE_COLOR ; 
 int R128_GMC_SRC_PITCH_OFFSET_CNTL ; 
 int R128_GMC_WR_MSK_DIS ; 
 int R128_ROP3_S ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev,
					 drm_r128_depth_t *depth)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	int count, *x, *y;
	int i, xbuf_size, ybuf_size;
	RING_LOCALS;
	FUNC4("\n");

	count = depth->n;
	if (count > 4096 || count <= 0)
		return -EMSGSIZE;

	if (count > dev_priv->depth_pitch)
		count = dev_priv->depth_pitch;

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
	if (FUNC3(y, depth->y, ybuf_size)) {
		FUNC6(x);
		FUNC6(y);
		return -EFAULT;
	}

	for (i = 0; i < count; i++) {
		FUNC1(7);

		FUNC5(FUNC2(R128_CNTL_BITBLT_MULTI, 5));
		FUNC5(R128_GMC_SRC_PITCH_OFFSET_CNTL |
			 R128_GMC_DST_PITCH_OFFSET_CNTL |
			 R128_GMC_BRUSH_NONE |
			 (dev_priv->depth_fmt << 8) |
			 R128_GMC_SRC_DATATYPE_COLOR |
			 R128_ROP3_S |
			 R128_DP_SRC_SOURCE_MEMORY |
			 R128_GMC_CLR_CMP_CNTL_DIS | R128_GMC_WR_MSK_DIS);

		FUNC5(dev_priv->depth_pitch_offset_c);
		FUNC5(dev_priv->span_pitch_offset_c);

		FUNC5((x[i] << 16) | y[i]);
		FUNC5((i << 16) | 0);
		FUNC5((1 << 16) | 1);

		FUNC0();
	}

	FUNC6(x);
	FUNC6(y);

	return 0;
}