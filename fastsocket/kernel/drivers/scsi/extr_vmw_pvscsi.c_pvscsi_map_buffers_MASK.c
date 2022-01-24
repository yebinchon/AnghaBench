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
struct scsi_cmnd {int /*<<< orphan*/  sc_data_direction; } ;
struct scatterlist {int dummy; } ;
struct pvscsi_ctx {void* dataPA; void* sglPA; struct scatterlist* sgl; } ;
struct pvscsi_adapter {int /*<<< orphan*/  dev; } ;
struct PVSCSIRingReqDesc {unsigned int dataLen; void* dataAddr; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  PVSCSI_FLAG_CMD_WITH_SG_LIST ; 
 unsigned int SGL_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_ctx*,struct scatterlist*,int) ; 
 unsigned int FUNC2 (struct scsi_cmnd*) ; 
 int FUNC3 (struct scsi_cmnd*) ; 
 unsigned int FUNC4 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC5 (struct scsi_cmnd*) ; 
 void* FUNC6 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC7(struct pvscsi_adapter *adapter,
			       struct pvscsi_ctx *ctx, struct scsi_cmnd *cmd,
			       struct PVSCSIRingReqDesc *e)
{
	unsigned count;
	unsigned bufflen = FUNC2(cmd);
	struct scatterlist *sg;

	e->dataLen = bufflen;
	e->dataAddr = 0;
	if (bufflen == 0)
		return;

	sg = FUNC5(cmd);
	count = FUNC4(cmd);
	if (count != 0) {
		int segs = FUNC3(cmd);
		if (segs > 1) {
			FUNC1(ctx, sg, segs);

			e->flags |= PVSCSI_FLAG_CMD_WITH_SG_LIST;
			ctx->sglPA = FUNC0(adapter->dev, ctx->sgl,
						    SGL_SIZE, PCI_DMA_TODEVICE);
			e->dataAddr = ctx->sglPA;
		} else
			e->dataAddr = FUNC6(sg);
	} else {
		/*
		 * In case there is no S/G list, scsi_sglist points
		 * directly to the buffer.
		 */
		ctx->dataPA = FUNC0(adapter->dev, sg, bufflen,
					     cmd->sc_data_direction);
		e->dataAddr = ctx->dataPA;
	}
}