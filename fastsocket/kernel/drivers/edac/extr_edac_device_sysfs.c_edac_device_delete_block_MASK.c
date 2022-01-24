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
struct edac_device_ctl_info {int dummy; } ;
struct edac_device_block {int nr_attribs; int /*<<< orphan*/  kobj; struct edac_dev_sysfs_block_attribute* block_attributes; } ;
struct edac_dev_sysfs_block_attribute {int dummy; } ;
struct attribute {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct attribute*) ; 

__attribute__((used)) static void FUNC2(struct edac_device_ctl_info *edac_dev,
				struct edac_device_block *block)
{
	struct edac_dev_sysfs_block_attribute *sysfs_attrib;
	int i;

	/* if this block has 'attributes' then we need to iterate over the list
	 * and 'remove' the attributes on this block
	 */
	sysfs_attrib = block->block_attributes;
	if (sysfs_attrib && block->nr_attribs) {
		for (i = 0; i < block->nr_attribs; i++, sysfs_attrib++) {

			/* remove each block_attrib file */
			FUNC1(&block->kobj,
				(struct attribute *) sysfs_attrib);
		}
	}

	/* unregister this block's kobject, SEE:
	 *	edac_device_ctrl_block_release() callback operation
	 */
	FUNC0(&block->kobj);
}