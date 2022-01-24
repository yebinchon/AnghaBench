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
struct ti_ohci {TYPE_1__* host; } ;
struct inode {int dummy; } ;
struct file_ctx {int /*<<< orphan*/ * current_ctx; int /*<<< orphan*/  context_list; struct ti_ohci* ohci; } ;
struct file {struct file_ctx* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct ti_ohci* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct file*) ; 
 struct file_ctx* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video1394_highlevel ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	int i = FUNC3(file);
	struct ti_ohci *ohci;
	struct file_ctx *ctx;

	ohci = FUNC2(&video1394_highlevel, i);
        if (ohci == NULL)
                return -EIO;

	ctx = FUNC4(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)  {
		FUNC1(KERN_ERR, ohci->host->id, "Cannot malloc file_ctx");
		return -ENOMEM;
	}

	ctx->ohci = ohci;
	FUNC0(&ctx->context_list);
	ctx->current_ctx = NULL;
	file->private_data = ctx;

	return 0;
}