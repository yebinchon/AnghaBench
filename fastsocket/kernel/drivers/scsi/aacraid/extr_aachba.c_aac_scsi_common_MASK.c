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
typedef  int u32 ;
struct scsi_cmnd {int sc_data_direction; int cmd_len; TYPE_2__* request; TYPE_1__* device; } ;
struct fib {int dummy; } ;
struct aac_srb {void* cdb_size; scalar_t__ retry_limit; void* timeout; void* flags; void* lun; void* id; void* channel; void* function; } ;
struct TYPE_4__ {int timeout; } ;
struct TYPE_3__ {int lun; } ;

/* Variables and functions */
#define  DMA_BIDIRECTIONAL 131 
#define  DMA_FROM_DEVICE 130 
#define  DMA_NONE 129 
#define  DMA_TO_DEVICE 128 
 int HZ ; 
 int SRBF_ExecuteScsi ; 
 int SRB_DataIn ; 
 int SRB_DataOut ; 
 int SRB_NoDataXfer ; 
 int /*<<< orphan*/  FUNC0 (struct fib*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct fib*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int FUNC5 (struct scsi_cmnd*) ; 

__attribute__((used)) static struct aac_srb * FUNC6(struct fib * fib, struct scsi_cmnd * cmd)
{
	struct aac_srb * srbcmd;
	u32 flag;
	u32 timeout;

	FUNC0(fib);
	switch(cmd->sc_data_direction){
	case DMA_TO_DEVICE:
		flag = SRB_DataOut;
		break;
	case DMA_BIDIRECTIONAL:
		flag = SRB_DataIn | SRB_DataOut;
		break;
	case DMA_FROM_DEVICE:
		flag = SRB_DataIn;
		break;
	case DMA_NONE:
	default:	/* shuts up some versions of gcc */
		flag = SRB_NoDataXfer;
		break;
	}

	srbcmd = (struct aac_srb*) FUNC3(fib);
	srbcmd->function = FUNC2(SRBF_ExecuteScsi);
	srbcmd->channel  = FUNC2(FUNC1(FUNC4(cmd)));
	srbcmd->id       = FUNC2(FUNC5(cmd));
	srbcmd->lun      = FUNC2(cmd->device->lun);
	srbcmd->flags    = FUNC2(flag);
	timeout = cmd->request->timeout/HZ;
	if (timeout == 0)
		timeout = 1;
	srbcmd->timeout  = FUNC2(timeout);  // timeout in seconds
	srbcmd->retry_limit = 0; /* Obsolete parameter */
	srbcmd->cdb_size = FUNC2(cmd->cmd_len);
	return srbcmd;
}