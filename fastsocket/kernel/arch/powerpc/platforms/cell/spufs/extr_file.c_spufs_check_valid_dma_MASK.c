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
struct mfc_dma_command {int lsa; int ea; int size; int tag; int cmd; scalar_t__ class; } ;

/* Variables and functions */
 int EIO ; 
#define  MFC_GETB_CMD 133 
#define  MFC_GETF_CMD 132 
#define  MFC_GET_CMD 131 
#define  MFC_PUTB_CMD 130 
#define  MFC_PUTF_CMD 129 
#define  MFC_PUT_CMD 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int FUNC1(struct mfc_dma_command *cmd)
{
	FUNC0("queueing DMA %x %llx %x %x %x\n", cmd->lsa,
		 cmd->ea, cmd->size, cmd->tag, cmd->cmd);

	switch (cmd->cmd) {
	case MFC_PUT_CMD:
	case MFC_PUTF_CMD:
	case MFC_PUTB_CMD:
	case MFC_GET_CMD:
	case MFC_GETF_CMD:
	case MFC_GETB_CMD:
		break;
	default:
		FUNC0("invalid DMA opcode %x\n", cmd->cmd);
		return -EIO;
	}

	if ((cmd->lsa & 0xf) != (cmd->ea &0xf)) {
		FUNC0("invalid DMA alignment, ea %llx lsa %x\n",
				cmd->ea, cmd->lsa);
		return -EIO;
	}

	switch (cmd->size & 0xf) {
	case 1:
		break;
	case 2:
		if (cmd->lsa & 1)
			goto error;
		break;
	case 4:
		if (cmd->lsa & 3)
			goto error;
		break;
	case 8:
		if (cmd->lsa & 7)
			goto error;
		break;
	case 0:
		if (cmd->lsa & 15)
			goto error;
		break;
	error:
	default:
		FUNC0("invalid DMA alignment %x for size %x\n",
			cmd->lsa & 0xf, cmd->size);
		return -EIO;
	}

	if (cmd->size > 16 * 1024) {
		FUNC0("invalid DMA size %x\n", cmd->size);
		return -EIO;
	}

	if (cmd->tag & 0xfff0) {
		/* we reserve the higher tag numbers for kernel use */
		FUNC0("invalid DMA tag\n");
		return -EIO;
	}

	if (cmd->class) {
		/* not supported in this version */
		FUNC0("invalid DMA class\n");
		return -EIO;
	}

	return 0;
}