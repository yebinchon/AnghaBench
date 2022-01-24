#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ctlr_info {TYPE_1__* pdev; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CMD_DATA_UNDERRUN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HPSA_INQUIRY ; 
 int IO_OK ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  TYPE_CMD ; 
 struct CommandList* FUNC0 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct CommandList*,int /*<<< orphan*/ ,struct ctlr_info*,unsigned char*,unsigned char,unsigned char,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ctlr_info*,struct CommandList*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct CommandList*) ; 

__attribute__((used)) static int FUNC6(struct ctlr_info *h, unsigned char *scsi3addr,
			unsigned char page, unsigned char *buf,
			unsigned char bufsize)
{
	int rc = IO_OK;
	struct CommandList *c;
	struct ErrorInfo *ei;

	c = FUNC0(h);

	if (c == NULL) {			/* trouble... */
		FUNC2(&h->pdev->dev, "cmd_special_alloc returned NULL!\n");
		return -ENOMEM;
	}

	FUNC3(c, HPSA_INQUIRY, h, buf, bufsize, page, scsi3addr, TYPE_CMD);
	FUNC4(h, c, PCI_DMA_FROMDEVICE);
	ei = c->err_info;
	if (ei->CommandStatus != 0 && ei->CommandStatus != CMD_DATA_UNDERRUN) {
		FUNC5(c);
		rc = -1;
	}
	FUNC1(h, c);
	return rc;
}