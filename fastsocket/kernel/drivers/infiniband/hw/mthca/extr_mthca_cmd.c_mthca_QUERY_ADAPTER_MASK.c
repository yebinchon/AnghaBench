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
typedef  int /*<<< orphan*/  u32 ;
struct mthca_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/ * buf; } ;
struct mthca_dev {int dummy; } ;
struct mthca_adapter {int /*<<< orphan*/  board_id; int /*<<< orphan*/  inta_pin; int /*<<< orphan*/  revision_id; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_QUERY_ADAPTER ; 
 int /*<<< orphan*/  CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  QUERY_ADAPTER_DEVICE_ID_OFFSET ; 
 int /*<<< orphan*/  QUERY_ADAPTER_INTA_PIN_OFFSET ; 
 int /*<<< orphan*/  QUERY_ADAPTER_REVISION_ID_OFFSET ; 
 int /*<<< orphan*/  QUERY_ADAPTER_VENDOR_ID_OFFSET ; 
 int QUERY_ADAPTER_VSD_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mthca_mailbox* FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*) ; 

int FUNC8(struct mthca_dev *dev,
			struct mthca_adapter *adapter)
{
	struct mthca_mailbox *mailbox;
	u32 *outbox;
	int err;

#define QUERY_ADAPTER_OUT_SIZE             0x100
#define QUERY_ADAPTER_VENDOR_ID_OFFSET     0x00
#define QUERY_ADAPTER_DEVICE_ID_OFFSET     0x04
#define QUERY_ADAPTER_REVISION_ID_OFFSET   0x08
#define QUERY_ADAPTER_INTA_PIN_OFFSET      0x10
#define QUERY_ADAPTER_VSD_OFFSET           0x20

	mailbox = FUNC4(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return FUNC2(mailbox);
	outbox = mailbox->buf;

	err = FUNC5(dev, 0, mailbox->dma, 0, 0, CMD_QUERY_ADAPTER,
			    CMD_TIME_CLASS_A);

	if (err)
		goto out;

	if (!FUNC7(dev)) {
		FUNC1(adapter->vendor_id, outbox,
			  QUERY_ADAPTER_VENDOR_ID_OFFSET);
		FUNC1(adapter->device_id, outbox,
			  QUERY_ADAPTER_DEVICE_ID_OFFSET);
		FUNC1(adapter->revision_id, outbox,
			  QUERY_ADAPTER_REVISION_ID_OFFSET);
	}
	FUNC1(adapter->inta_pin, outbox,    QUERY_ADAPTER_INTA_PIN_OFFSET);

	FUNC3(outbox + QUERY_ADAPTER_VSD_OFFSET / 4,
		     adapter->board_id);

out:
	FUNC6(dev, mailbox);
	return err;
}