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
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {TYPE_1__* agp_buffer_map; TYPE_2__* dev_private; } ;
struct drm_buf {int offset; } ;
struct TYPE_4__ {int gart_buffers_offset; } ;
typedef  TYPE_2__ drm_radeon_private_t ;
struct TYPE_3__ {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  R600_IT_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int FUNC5 (unsigned long) ; 

int FUNC6(struct drm_device *dev,
			      struct drm_buf *buf, int start, int end)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	RING_LOCALS;

	if (start != end) {
		unsigned long offset = (dev_priv->gart_buffers_offset
					+ buf->offset + start);
		int dwords = (end - start + 3) / sizeof(u32);

		FUNC3("dwords:%d\n", dwords);
		FUNC3("offset 0x%lx\n", offset);


		/* Indirect buffer data must be a multiple of 16 dwords.
		 * pad the data with a Type-2 CP packet.
		 */
		while (dwords & 0xf) {
			u32 *data = (u32 *)
			    ((char *)dev->agp_buffer_map->handle
			     + buf->offset + start);
			data[dwords++] = RADEON_CP_PACKET2;
		}

		/* Fire off the indirect buffer */
		FUNC1(4);
		FUNC4(FUNC2(R600_IT_INDIRECT_BUFFER, 2));
		FUNC4((offset & 0xfffffffc));
		FUNC4((FUNC5(offset) & 0xff));
		FUNC4(dwords);
		FUNC0();
	}

	return 0;
}