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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int) ; 
 int EINVAL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_BITBLT_MULTI ; 
 int RADEON_COLOR_FORMAT_ARGB8888 ; 
 int RADEON_DP_SRC_SOURCE_MEMORY ; 
 int /*<<< orphan*/  RADEON_DSTCACHE_CTLSTAT ; 
 int RADEON_GMC_BRUSH_NONE ; 
 int RADEON_GMC_CLR_CMP_CNTL_DIS ; 
 int RADEON_GMC_DST_CLIPPING ; 
 int RADEON_GMC_DST_PITCH_OFFSET_CNTL ; 
 int RADEON_GMC_SRC_CLIPPING ; 
 int RADEON_GMC_SRC_DATATYPE_COLOR ; 
 int RADEON_GMC_SRC_PITCH_OFFSET_CNTL ; 
 int RADEON_GMC_WR_MSK_DIS ; 
 int RADEON_GPU_PAGE_SIZE ; 
 int RADEON_RB2D_DC_FLUSH_ALL ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int RADEON_ROP3_S ; 
 int RADEON_WAIT_2D_IDLECLEAN ; 
 int RADEON_WAIT_DMA_GUI_IDLE ; 
 int RADEON_WAIT_HOST_IDLECLEAN ; 
 int /*<<< orphan*/  RADEON_WAIT_UNTIL ; 
 int FUNC4 (struct radeon_device*,struct radeon_fence**,size_t) ; 
 int FUNC5 (struct radeon_device*,struct radeon_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_ring*,int) ; 

int FUNC8(struct radeon_device *rdev,
		   uint64_t src_offset,
		   uint64_t dst_offset,
		   unsigned num_gpu_pages,
		   struct radeon_fence **fence)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	uint32_t cur_pages;
	uint32_t stride_bytes = RADEON_GPU_PAGE_SIZE;
	uint32_t pitch;
	uint32_t stride_pixels;
	unsigned ndw;
	int num_loops;
	int r = 0;

	/* radeon limited to 16k stride */
	stride_bytes &= 0x3fff;
	/* radeon pitch is /64 */
	pitch = stride_bytes / 64;
	stride_pixels = stride_bytes / 4;
	num_loops = FUNC0(num_gpu_pages, 8191);

	/* Ask for enough room for blit + flush + fence */
	ndw = 64 + (10 * num_loops);
	r = FUNC5(rdev, ring, ndw);
	if (r) {
		FUNC1("radeon: moving bo (%d) asking for %u dw.\n", r, ndw);
		return -EINVAL;
	}
	while (num_gpu_pages > 0) {
		cur_pages = num_gpu_pages;
		if (cur_pages > 8191) {
			cur_pages = 8191;
		}
		num_gpu_pages -= cur_pages;

		/* pages are in Y direction - height
		   page width in X direction - width */
		FUNC7(ring, FUNC3(PACKET3_BITBLT_MULTI, 8));
		FUNC7(ring,
				  RADEON_GMC_SRC_PITCH_OFFSET_CNTL |
				  RADEON_GMC_DST_PITCH_OFFSET_CNTL |
				  RADEON_GMC_SRC_CLIPPING |
				  RADEON_GMC_DST_CLIPPING |
				  RADEON_GMC_BRUSH_NONE |
				  (RADEON_COLOR_FORMAT_ARGB8888 << 8) |
				  RADEON_GMC_SRC_DATATYPE_COLOR |
				  RADEON_ROP3_S |
				  RADEON_DP_SRC_SOURCE_MEMORY |
				  RADEON_GMC_CLR_CMP_CNTL_DIS |
				  RADEON_GMC_WR_MSK_DIS);
		FUNC7(ring, (pitch << 22) | (src_offset >> 10));
		FUNC7(ring, (pitch << 22) | (dst_offset >> 10));
		FUNC7(ring, (0x1fff) | (0x1fff << 16));
		FUNC7(ring, 0);
		FUNC7(ring, (0x1fff) | (0x1fff << 16));
		FUNC7(ring, num_gpu_pages);
		FUNC7(ring, num_gpu_pages);
		FUNC7(ring, cur_pages | (stride_pixels << 16));
	}
	FUNC7(ring, FUNC2(RADEON_DSTCACHE_CTLSTAT, 0));
	FUNC7(ring, RADEON_RB2D_DC_FLUSH_ALL);
	FUNC7(ring, FUNC2(RADEON_WAIT_UNTIL, 0));
	FUNC7(ring,
			  RADEON_WAIT_2D_IDLECLEAN |
			  RADEON_WAIT_HOST_IDLECLEAN |
			  RADEON_WAIT_DMA_GUI_IDLE);
	if (fence) {
		r = FUNC4(rdev, fence, RADEON_RING_TYPE_GFX_INDEX);
	}
	FUNC6(rdev, ring);
	return r;
}