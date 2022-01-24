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
struct inode {struct bnad* i_private; } ;
struct file {struct bnad_debug_info* private_data; } ;
struct bnad_debug_info {int buffer_len; struct bnad_debug_info* debug_buffer; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioc; } ;
struct TYPE_4__ {TYPE_1__ ioceth; } ;
struct bnad {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  bna_lock; TYPE_2__ bna; } ;

/* Variables and functions */
 int BFA_STATUS_OK ; 
 int BNA_DBG_FWTRC_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct bnad_debug_info*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad_debug_info*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct inode *inode, struct file *file)
{
	struct bnad *bnad = inode->i_private;
	struct bnad_debug_info *fw_debug;
	unsigned long flags;
	int rc;

	fw_debug = FUNC2(sizeof(struct bnad_debug_info), GFP_KERNEL);
	if (!fw_debug)
		return -ENOMEM;

	fw_debug->buffer_len = BNA_DBG_FWTRC_LEN;

	fw_debug->debug_buffer = FUNC2(fw_debug->buffer_len, GFP_KERNEL);
	if (!fw_debug->debug_buffer) {
		FUNC1(fw_debug);
		fw_debug = NULL;
		return -ENOMEM;
	}

	FUNC5(&bnad->bna_lock, flags);
	rc = FUNC0(&bnad->bna.ioceth.ioc,
			fw_debug->debug_buffer,
			&fw_debug->buffer_len);
	FUNC6(&bnad->bna_lock, flags);
	if (rc != BFA_STATUS_OK) {
		FUNC1(fw_debug->debug_buffer);
		fw_debug->debug_buffer = NULL;
		FUNC1(fw_debug);
		fw_debug = NULL;
		FUNC4("bnad %s: Failed to collect fwtrc\n",
			FUNC3(bnad->pcidev));
		return -ENOMEM;
	}

	file->private_data = fw_debug;

	return 0;
}