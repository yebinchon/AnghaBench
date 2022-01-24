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
struct scsi_cmnd {scalar_t__ sense_buffer; int /*<<< orphan*/  sc_data_direction; } ;
struct pvscsi_ctx {scalar_t__ sensePA; scalar_t__ dataPA; scalar_t__ sglPA; struct scsi_cmnd* cmd; } ;
struct pvscsi_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 unsigned int SCSI_SENSE_BUFFERSIZE ; 
 unsigned int SGL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 unsigned int FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC4(const struct pvscsi_adapter *adapter,
				 struct pvscsi_ctx *ctx)
{
	struct scsi_cmnd *cmd;
	unsigned bufflen;

	cmd = ctx->cmd;
	bufflen = FUNC1(cmd);

	if (bufflen != 0) {
		unsigned count = FUNC3(cmd);

		if (count != 0) {
			FUNC2(cmd);
			if (ctx->sglPA) {
				FUNC0(adapter->dev, ctx->sglPA,
						 SGL_SIZE, PCI_DMA_TODEVICE);
				ctx->sglPA = 0;
			}
		} else
			FUNC0(adapter->dev, ctx->dataPA, bufflen,
					 cmd->sc_data_direction);
	}
	if (cmd->sense_buffer)
		FUNC0(adapter->dev, ctx->sensePA,
				 SCSI_SENSE_BUFFERSIZE, PCI_DMA_FROMDEVICE);
}