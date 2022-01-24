#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct drm_device {TYPE_2__* dev_private; } ;
struct drm_buf {scalar_t__ used; scalar_t__ pending; int /*<<< orphan*/  idx; int /*<<< orphan*/  bus_address; TYPE_3__* dev_private; } ;
struct TYPE_7__ {int nbox; int /*<<< orphan*/ * boxes; int /*<<< orphan*/  dirty; } ;
typedef  TYPE_1__ drm_mga_sarea_t ;
struct TYPE_8__ {int dma_access; TYPE_1__* sarea_priv; } ;
typedef  TYPE_2__ drm_mga_private_t ;
struct TYPE_9__ {int dispatched; scalar_t__ discard; } ;
typedef  TYPE_3__ drm_mga_buf_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_LOCALS ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  MGA_DMAPAD ; 
 int MGA_DMA_VERTEX ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGA_SECADDRESS ; 
 int /*<<< orphan*/  MGA_SECEND ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,struct drm_buf*) ; 

__attribute__((used)) static void FUNC9(struct drm_device *dev, struct drm_buf *buf)
{
	drm_mga_private_t *dev_priv = dev->dev_private;
	drm_mga_buf_priv_t *buf_priv = buf->dev_private;
	drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
	u32 address = (u32) buf->bus_address;
	u32 length = (u32) buf->used;
	int i = 0;
	DMA_LOCALS;
	FUNC4("buf=%d used=%d\n", buf->idx, buf->used);

	if (buf->used) {
		buf_priv->dispatched = 1;

		FUNC6(dev_priv, sarea_priv->dirty);

		do {
			if (i < sarea_priv->nbox) {
				FUNC7(dev_priv,
						   &sarea_priv->boxes[i]);
			}

			FUNC2(1);

			FUNC3(MGA_DMAPAD, 0x00000000,
				  MGA_DMAPAD, 0x00000000,
				  MGA_SECADDRESS, (address |
						   MGA_DMA_VERTEX),
				  MGA_SECEND, ((address + length) |
					       dev_priv->dma_access));

			FUNC0();
		} while (++i < sarea_priv->nbox);
	}

	if (buf_priv->discard) {
		FUNC1(buf_priv);
		buf->pending = 0;
		buf->used = 0;
		buf_priv->dispatched = 0;

		FUNC8(dev, buf);
	}

	FUNC5();
}