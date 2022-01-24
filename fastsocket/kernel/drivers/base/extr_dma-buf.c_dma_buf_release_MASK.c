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
struct inode {int dummy; } ;
struct file {struct dma_buf* private_data; } ;
struct dma_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct dma_buf*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_buf*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct dma_buf *dmabuf;

	if (!FUNC0(file))
		return -EINVAL;

	dmabuf = file->private_data;

	dmabuf->ops->release(dmabuf);
	FUNC1(dmabuf);
	return 0;
}