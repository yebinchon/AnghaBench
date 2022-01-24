#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_7__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_30__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_27__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
struct drm_radeon_master_private {TYPE_4__* sarea_priv; } ;
struct drm_file {TYPE_27__* master; } ;
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; TYPE_5__* dev_private; } ;
struct drm_buf {int /*<<< orphan*/  pending; struct drm_file* file_priv; } ;
typedef  int /*<<< orphan*/  stack_header ;
struct TYPE_40__ {int flags; } ;
typedef  TYPE_5__ drm_radeon_private_t ;
struct TYPE_41__ {scalar_t__ nbox; TYPE_30__* buffer; } ;
typedef  TYPE_6__ drm_radeon_kcmd_buffer_t ;
struct TYPE_38__ {int cmd_type; } ;
struct TYPE_36__ {int buf_idx; } ;
struct TYPE_34__ {int count; } ;
struct TYPE_42__ {TYPE_3__ header; TYPE_2__ dma; TYPE_1__ delay; } ;
typedef  TYPE_7__ drm_r300_cmd_header_t ;
struct TYPE_39__ {int /*<<< orphan*/  last_dispatch; } ;
struct TYPE_37__ {int /*<<< orphan*/  iterator; } ;
struct TYPE_35__ {struct drm_radeon_master_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CHIP_RV515 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  R300_CMD_CP_DELAY 136 
#define  R300_CMD_DMA_DISCARD 135 
#define  R300_CMD_END3D 134 
#define  R300_CMD_PACKET0 133 
#define  R300_CMD_PACKET3 132 
#define  R300_CMD_R500FP 131 
#define  R300_CMD_SCRATCH 130 
#define  R300_CMD_VPU 129 
#define  R300_CMD_WAIT 128 
 scalar_t__ R300_SIMULTANEOUS_CLIPRECTS ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 TYPE_7__* FUNC7 (TYPE_30__*,int,TYPE_7__*) ; 
 int FUNC8 (TYPE_30__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_7__) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,TYPE_27__*,struct drm_buf*) ; 
 int FUNC11 (TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*,TYPE_6__*,TYPE_7__) ; 
 int FUNC13 (TYPE_5__*,TYPE_6__*,TYPE_7__) ; 
 int FUNC14 (TYPE_5__*,TYPE_6__*,TYPE_7__) ; 
 int FUNC15 (TYPE_5__*,TYPE_6__*,TYPE_7__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int FUNC17 (TYPE_5__*,TYPE_6__*,TYPE_7__) ; 

int FUNC18(struct drm_device *dev,
		      struct drm_file *file_priv,
		      drm_radeon_kcmd_buffer_t *cmdbuf)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	struct drm_radeon_master_private *master_priv = file_priv->master->driver_priv;
	struct drm_device_dma *dma = dev->dma;
	struct drm_buf *buf = NULL;
	int emit_dispatch_age = 0;
	int ret = 0;

	FUNC3("\n");

	/* pacify */
	FUNC16(dev_priv);

	if (cmdbuf->nbox <= R300_SIMULTANEOUS_CLIPRECTS) {
		ret = FUNC11(dev_priv, cmdbuf, 0);
		if (ret)
			goto cleanup;
	}

	while (FUNC8(cmdbuf->buffer)
			>= sizeof(drm_r300_cmd_header_t)) {
		int idx;
		drm_r300_cmd_header_t *header, stack_header;

		header = FUNC7(cmdbuf->buffer,
				sizeof(stack_header), &stack_header);

		switch (header->header.cmd_type) {
		case R300_CMD_PACKET0:
			FUNC3("R300_CMD_PACKET0\n");
			ret = FUNC12(dev_priv, cmdbuf, *header);
			if (ret) {
				FUNC4("r300_emit_packet0 failed\n");
				goto cleanup;
			}
			break;

		case R300_CMD_VPU:
			FUNC3("R300_CMD_VPU\n");
			ret = FUNC15(dev_priv, cmdbuf, *header);
			if (ret) {
				FUNC4("r300_emit_vpu failed\n");
				goto cleanup;
			}
			break;

		case R300_CMD_PACKET3:
			FUNC3("R300_CMD_PACKET3\n");
			ret = FUNC13(dev_priv, cmdbuf, *header);
			if (ret) {
				FUNC4("r300_emit_packet3 failed\n");
				goto cleanup;
			}
			break;

		case R300_CMD_END3D:
			FUNC3("R300_CMD_END3D\n");
			/* TODO:
			   Ideally userspace driver should not need to issue this call,
			   i.e. the drm driver should issue it automatically and prevent
			   lockups.

			   In practice, we do not understand why this call is needed and what
			   it does (except for some vague guesses that it has to do with cache
			   coherence) and so the user space driver does it.

			   Once we are sure which uses prevent lockups the code could be moved
			   into the kernel and the userspace driver will not
			   need to use this command.

			   Note that issuing this command does not hurt anything
			   except, possibly, performance */
			FUNC16(dev_priv);
			break;

		case R300_CMD_CP_DELAY:
			/* simple enough, we can do it here */
			FUNC3("R300_CMD_CP_DELAY\n");
			{
				int i;
				RING_LOCALS;

				FUNC1(header->delay.count);
				for (i = 0; i < header->delay.count; i++)
					FUNC5(RADEON_CP_PACKET2);
				FUNC0();
			}
			break;

		case R300_CMD_DMA_DISCARD:
			FUNC3("RADEON_CMD_DMA_DISCARD\n");
			idx = header->dma.buf_idx;
			if (idx < 0 || idx >= dma->buf_count) {
				FUNC4("buffer index %d (of %d max)\n",
					  idx, dma->buf_count - 1);
				ret = -EINVAL;
				goto cleanup;
			}

			buf = dma->buflist[idx];
			if (buf->file_priv != file_priv || buf->pending) {
				FUNC4("bad buffer %p %p %d\n",
					  buf->file_priv, file_priv,
					  buf->pending);
				ret = -EINVAL;
				goto cleanup;
			}

			emit_dispatch_age = 1;
			FUNC10(dev, file_priv->master, buf);
			break;

		case R300_CMD_WAIT:
			FUNC3("R300_CMD_WAIT\n");
			FUNC9(dev_priv, *header);
			break;

		case R300_CMD_SCRATCH:
			FUNC3("R300_CMD_SCRATCH\n");
			ret = FUNC17(dev_priv, cmdbuf, *header);
			if (ret) {
				FUNC4("r300_scratch failed\n");
				goto cleanup;
			}
			break;

		case R300_CMD_R500FP:
			if ((dev_priv->flags & RADEON_FAMILY_MASK) < CHIP_RV515) {
				FUNC4("Calling r500 command on r300 card\n");
				ret = -EINVAL;
				goto cleanup;
			}
			FUNC3("R300_CMD_R500FP\n");
			ret = FUNC14(dev_priv, cmdbuf, *header);
			if (ret) {
				FUNC4("r300_emit_r500fp failed\n");
				goto cleanup;
			}
			break;
		default:
			FUNC4("bad cmd_type %i at byte %d\n",
				  header->header.cmd_type,
				  cmdbuf->buffer->iterator - (int)sizeof(*header));
			ret = -EINVAL;
			goto cleanup;
		}
	}

	FUNC3("END\n");

      cleanup:
	FUNC16(dev_priv);

	/* We emit the vertex buffer age here, outside the pacifier "brackets"
	 * for two reasons:
	 *  (1) This may coalesce multiple age emissions into a single one and
	 *  (2) more importantly, some chips lock up hard when scratch registers
	 *      are written inside the pacifier bracket.
	 */
	if (emit_dispatch_age) {
		RING_LOCALS;

		/* Emit the vertex buffer age */
		FUNC1(2);
		FUNC6(master_priv->sarea_priv->last_dispatch);
		FUNC0();
	}

	FUNC2();

	return ret;
}