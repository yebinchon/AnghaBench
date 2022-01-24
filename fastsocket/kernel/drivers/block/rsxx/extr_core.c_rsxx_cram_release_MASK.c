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
struct rsxx_cram {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct rsxx_cram* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cram*) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *file)
{
	struct rsxx_cram *info = file->private_data;

	if (!info)
		return 0;

	FUNC0(info);
	file->private_data = NULL;

	return 0;
}