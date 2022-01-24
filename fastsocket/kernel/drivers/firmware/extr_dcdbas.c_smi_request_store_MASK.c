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
struct smi_cmd {int /*<<< orphan*/  command_buffer; int /*<<< orphan*/  ebx; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 size_t FUNC0 (struct smi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ smi_data_buf ; 
 int smi_data_buf_size ; 
 int /*<<< orphan*/  smi_data_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct smi_cmd *smi_cmd;
	unsigned long val = FUNC4(buf, NULL, 10);
	ssize_t ret;

	FUNC2(&smi_data_lock);

	if (smi_data_buf_size < sizeof(struct smi_cmd)) {
		ret = -ENODEV;
		goto out;
	}
	smi_cmd = (struct smi_cmd *)smi_data_buf;

	switch (val) {
	case 2:
		/* Raw SMI */
		ret = FUNC0(smi_cmd);
		if (!ret)
			ret = count;
		break;
	case 1:
		/* Calling Interface SMI */
		smi_cmd->ebx = (u32) FUNC5(smi_cmd->command_buffer);
		ret = FUNC0(smi_cmd);
		if (!ret)
			ret = count;
		break;
	case 0:
		FUNC1(smi_data_buf, 0, smi_data_buf_size);
		ret = count;
		break;
	default:
		ret = -EINVAL;
		break;
	}

out:
	FUNC3(&smi_data_lock);
	return ret;
}