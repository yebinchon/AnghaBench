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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mthca_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/ * buf; } ;
struct mthca_dev {int ddr_start; int ddr_end; int mthca_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ENABLE_LAM ; 
 int /*<<< orphan*/  CMD_TIME_CLASS_C ; 
 int /*<<< orphan*/  ENABLE_LAM_END_OFFSET ; 
 int ENABLE_LAM_INFO_HIDDEN_FLAG ; 
 int /*<<< orphan*/  ENABLE_LAM_INFO_OFFSET ; 
 int /*<<< orphan*/  ENABLE_LAM_START_OFFSET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int MTHCA_FLAG_DDR_HIDDEN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mthca_mailbox*) ; 
 struct mthca_mailbox* FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*,char*,char*) ; 

int FUNC8(struct mthca_dev *dev)
{
	struct mthca_mailbox *mailbox;
	u8 info;
	u32 *outbox;
	int err = 0;

#define ENABLE_LAM_OUT_SIZE         0x100
#define ENABLE_LAM_START_OFFSET     0x00
#define ENABLE_LAM_END_OFFSET       0x08
#define ENABLE_LAM_INFO_OFFSET      0x13

#define ENABLE_LAM_INFO_HIDDEN_FLAG (1 << 4)
#define ENABLE_LAM_INFO_ECC_MASK    0x3

	mailbox = FUNC3(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return FUNC2(mailbox);
	outbox = mailbox->buf;

	err = FUNC4(dev, 0, mailbox->dma, 0, 0, CMD_ENABLE_LAM,
			    CMD_TIME_CLASS_C);

	if (err)
		goto out;

	FUNC1(dev->ddr_start, outbox, ENABLE_LAM_START_OFFSET);
	FUNC1(dev->ddr_end,   outbox, ENABLE_LAM_END_OFFSET);
	FUNC1(info,           outbox, ENABLE_LAM_INFO_OFFSET);

	if (!!(info & ENABLE_LAM_INFO_HIDDEN_FLAG) !=
	    !!(dev->mthca_flags & MTHCA_FLAG_DDR_HIDDEN)) {
		FUNC7(dev, "FW reports that HCA-attached memory "
			   "is %s hidden; does not match PCI config\n",
			   (info & ENABLE_LAM_INFO_HIDDEN_FLAG) ?
			   "" : "not");
	}
	if (info & ENABLE_LAM_INFO_HIDDEN_FLAG)
		FUNC5(dev, "HCA-attached memory is hidden.\n");

	FUNC5(dev, "HCA memory size %d KB (start %llx, end %llx)\n",
		  (int) ((dev->ddr_end - dev->ddr_start) >> 10),
		  (unsigned long long) dev->ddr_start,
		  (unsigned long long) dev->ddr_end);

out:
	FUNC6(dev, mailbox);
	return err;
}