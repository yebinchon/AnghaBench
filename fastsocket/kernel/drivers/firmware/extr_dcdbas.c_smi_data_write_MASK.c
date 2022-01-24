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
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ MAX_SMI_DATA_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ smi_data_buf ; 
 size_t FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  smi_data_lock ; 

__attribute__((used)) static ssize_t FUNC4(struct file *filp, struct kobject *kobj,
			      struct bin_attribute *bin_attr,
			      char *buf, loff_t pos, size_t count)
{
	ssize_t ret;

	if ((pos + count) > MAX_SMI_DATA_BUF_SIZE)
		return -EINVAL;

	FUNC1(&smi_data_lock);

	ret = FUNC3(pos + count);
	if (ret)
		goto out;

	FUNC0(smi_data_buf + pos, buf, count);
	ret = count;
out:
	FUNC2(&smi_data_lock);
	return ret;
}