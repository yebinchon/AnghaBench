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
struct mthca_set_ib_param {int /*<<< orphan*/  si_guid; int /*<<< orphan*/  cap_mask; scalar_t__ reset_qkey_viol; scalar_t__ set_si_guid; } ;
struct mthca_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/ * buf; } ;
struct mthca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_IB ; 
 int /*<<< orphan*/  CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  SET_IB_CAP_MASK_OFFSET ; 
 int /*<<< orphan*/  SET_IB_FLAGS_OFFSET ; 
 int /*<<< orphan*/  SET_IB_FLAG_RQK ; 
 int /*<<< orphan*/  SET_IB_FLAG_SIG ; 
 int /*<<< orphan*/  SET_IB_IN_SIZE ; 
 int /*<<< orphan*/  SET_IB_SI_GUID_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mthca_mailbox* FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mthca_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,struct mthca_mailbox*) ; 

int FUNC7(struct mthca_dev *dev, struct mthca_set_ib_param *param,
		 int port)
{
	struct mthca_mailbox *mailbox;
	u32 *inbox;
	int err;
	u32 flags = 0;

#define SET_IB_IN_SIZE         0x40
#define SET_IB_FLAGS_OFFSET    0x00
#define SET_IB_FLAG_SIG        (1 << 18)
#define SET_IB_FLAG_RQK        (1 <<  0)
#define SET_IB_CAP_MASK_OFFSET 0x04
#define SET_IB_SI_GUID_OFFSET  0x08

	mailbox = FUNC4(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return FUNC2(mailbox);
	inbox = mailbox->buf;

	FUNC3(inbox, 0, SET_IB_IN_SIZE);

	flags |= param->set_si_guid     ? SET_IB_FLAG_SIG : 0;
	flags |= param->reset_qkey_viol ? SET_IB_FLAG_RQK : 0;
	FUNC1(inbox, flags, SET_IB_FLAGS_OFFSET);

	FUNC1(inbox, param->cap_mask, SET_IB_CAP_MASK_OFFSET);
	FUNC1(inbox, param->si_guid,  SET_IB_SI_GUID_OFFSET);

	err = FUNC5(dev, mailbox->dma, port, 0, CMD_SET_IB,
			CMD_TIME_CLASS_B);

	FUNC6(dev, mailbox);
	return err;
}