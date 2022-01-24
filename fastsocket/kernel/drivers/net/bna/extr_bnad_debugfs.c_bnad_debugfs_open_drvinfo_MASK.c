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
struct inode {struct bnad* i_private; } ;
struct file {struct bnad_debug_info* private_data; } ;
struct bnad_drvinfo {int dummy; } ;
struct bnad_debug_info {int buffer_len; struct bnad_debug_info* debug_buffer; } ;
struct bnad {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int BFA_STATUS_OK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bnad*,struct bnad_debug_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad_debug_info*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *inode, struct file *file)
{
	struct bnad *bnad = inode->i_private;
	struct bnad_debug_info *drv_info;
	int rc;

	drv_info = FUNC2(sizeof(struct bnad_debug_info), GFP_KERNEL);
	if (!drv_info)
		return -ENOMEM;

	drv_info->buffer_len = sizeof(struct bnad_drvinfo);

	drv_info->debug_buffer = FUNC2(drv_info->buffer_len, GFP_KERNEL);
	if (!drv_info->debug_buffer) {
		FUNC1(drv_info);
		drv_info = NULL;
		return -ENOMEM;
	}

	FUNC3(&bnad->conf_mutex);
	rc = FUNC0(bnad, drv_info->debug_buffer,
				drv_info->buffer_len);
	FUNC4(&bnad->conf_mutex);
	if (rc != BFA_STATUS_OK) {
		FUNC1(drv_info->debug_buffer);
		drv_info->debug_buffer = NULL;
		FUNC1(drv_info);
		drv_info = NULL;
		FUNC6("bna %s: Failed to collect drvinfo\n",
			FUNC5(bnad->pcidev));
		return -ENOMEM;
	}

	file->private_data = drv_info;

	return 0;
}