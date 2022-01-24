#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct drm_device {TYPE_1__* agp; TYPE_3__* dev_private; } ;
struct drm_clip_rect {int x1; int y1; int x2; int y2; } ;
struct drm_buf {scalar_t__ bus_address; TYPE_4__* dev_private; } ;
struct TYPE_6__ {int nbox; unsigned int vertex_prim; scalar_t__ dirty; struct drm_clip_rect* boxes; } ;
typedef  TYPE_2__ drm_i810_sarea_t ;
struct TYPE_7__ {int counter; TYPE_2__* sarea_priv; } ;
typedef  TYPE_3__ drm_i810_private_t ;
struct TYPE_8__ {scalar_t__ currently_mapped; int my_use_idx; int /*<<< orphan*/  in_use; scalar_t__ kernel_virtual; } ;
typedef  TYPE_4__ drm_i810_buf_priv_t ;
struct TYPE_5__ {unsigned long base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long BB1_PROTECTED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CMD_OP_BATCH_BUFFER ; 
 int CMD_REPORT_HEAD ; 
 int CMD_STORE_DWORD_IDX ; 
 unsigned int GFX_OP_PRIMITIVE ; 
 int GFX_OP_SCISSOR ; 
 int GFX_OP_SCISSOR_INFO ; 
 int /*<<< orphan*/  I810_BUF_CLIENT ; 
 int I810_BUF_FREE ; 
 int /*<<< orphan*/  I810_BUF_HARDWARE ; 
 scalar_t__ I810_BUF_MAPPED ; 
 int I810_NR_SAREA_CLIPRECTS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int PR_MASK ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int SC_ENABLE ; 
 int SC_UPDATE_SCISSOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_buf*) ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev,
				     struct drm_buf *buf, int discard, int used)
{
	drm_i810_private_t *dev_priv = dev->dev_private;
	drm_i810_buf_priv_t *buf_priv = buf->dev_private;
	drm_i810_sarea_t *sarea_priv = dev_priv->sarea_priv;
	struct drm_clip_rect *box = sarea_priv->boxes;
	int nbox = sarea_priv->nbox;
	unsigned long address = (unsigned long)buf->bus_address;
	unsigned long start = address - dev->agp->base;
	int i = 0;
	RING_LOCALS;

	FUNC5(dev);

	if (nbox > I810_NR_SAREA_CLIPRECTS)
		nbox = I810_NR_SAREA_CLIPRECTS;

	if (used > 4 * 1024)
		used = 0;

	if (sarea_priv->dirty)
		FUNC4(dev);

	if (buf_priv->currently_mapped == I810_BUF_MAPPED) {
		unsigned int prim = (sarea_priv->vertex_prim & PR_MASK);

		*(u32 *) buf_priv->kernel_virtual =
		    ((GFX_OP_PRIMITIVE | prim | ((used / 4) - 2)));

		if (used & 4) {
			*(u32 *) ((char *) buf_priv->kernel_virtual + used) = 0;
			used += 4;
		}

		FUNC6(buf);
	}

	if (used) {
		do {
			if (i < nbox) {
				FUNC1(4);
				FUNC2(GFX_OP_SCISSOR | SC_UPDATE_SCISSOR |
					 SC_ENABLE);
				FUNC2(GFX_OP_SCISSOR_INFO);
				FUNC2(box[i].x1 | (box[i].y1 << 16));
				FUNC2((box[i].x2 -
					  1) | ((box[i].y2 - 1) << 16));
				FUNC0();
			}

			FUNC1(4);
			FUNC2(CMD_OP_BATCH_BUFFER);
			FUNC2(start | BB1_PROTECTED);
			FUNC2(start + used - 4);
			FUNC2(0);
			FUNC0();

		} while (++i < nbox);
	}

	if (discard) {
		dev_priv->counter++;

		(void)FUNC3(buf_priv->in_use, I810_BUF_CLIENT,
			      I810_BUF_HARDWARE);

		FUNC1(8);
		FUNC2(CMD_STORE_DWORD_IDX);
		FUNC2(20);
		FUNC2(dev_priv->counter);
		FUNC2(CMD_STORE_DWORD_IDX);
		FUNC2(buf_priv->my_use_idx);
		FUNC2(I810_BUF_FREE);
		FUNC2(CMD_REPORT_HEAD);
		FUNC2(0);
		FUNC0();
	}
}