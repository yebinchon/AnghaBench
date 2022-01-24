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
struct mthca_mailbox {int /*<<< orphan*/  buf; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;
struct mthca_dev {TYPE_1__ cmd; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mthca_mailbox* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_mailbox*) ; 
 struct mthca_mailbox* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct mthca_mailbox *FUNC4(struct mthca_dev *dev,
					  gfp_t gfp_mask)
{
	struct mthca_mailbox *mailbox;

	mailbox = FUNC2(sizeof *mailbox, gfp_mask);
	if (!mailbox)
		return FUNC0(-ENOMEM);

	mailbox->buf = FUNC3(dev->cmd.pool, gfp_mask, &mailbox->dma);
	if (!mailbox->buf) {
		FUNC1(mailbox);
		return FUNC0(-ENOMEM);
	}

	return mailbox;
}