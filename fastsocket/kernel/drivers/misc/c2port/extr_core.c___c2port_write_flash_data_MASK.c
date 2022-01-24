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
typedef  size_t u8 ;
struct c2port_ops {size_t block_size; size_t blocks_num; } ;
struct c2port_device {struct c2port_ops* ops; } ;
typedef  int ssize_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 char C2PORT_BLOCK_WRITE ; 
 size_t C2PORT_COMMAND_OK ; 
 int /*<<< orphan*/  C2PORT_FPDAT ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (struct c2port_device*) ; 
 int FUNC1 (struct c2port_device*) ; 
 int FUNC2 (struct c2port_device*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct c2port_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct c2port_device*,char) ; 

__attribute__((used)) static ssize_t FUNC5(struct c2port_device *dev,
				char *buffer, loff_t offset, size_t count)
{
	struct c2port_ops *ops = dev->ops;
	u8 status, nwrite = 128;
	int i, ret;

	if (nwrite > count)
		nwrite = count;
	if (ops->block_size * ops->blocks_num - offset < nwrite)
		nwrite = ops->block_size * ops->blocks_num - offset;

	/* Check for flash end */
	if (offset >= ops->block_size * ops->blocks_num)
		return -EINVAL;

	/* Target the C2 flash programming data register for C2 data register
	 * access */
	FUNC3(dev, C2PORT_FPDAT);

	/* Send flash block write command */
	FUNC4(dev, C2PORT_BLOCK_WRITE);

	/* Wait for input acknowledge */
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	/* Should check status before starting FLASH access sequence */

	/* Wait for status information */
	ret = FUNC1(dev);
	if (ret < 0)
		return ret;

	/* Read flash programming interface status */
	ret = FUNC2(dev, &status);
	if (ret < 0)
		return ret;
	if (status != C2PORT_COMMAND_OK)
		return -EBUSY;

	/* Send address high byte */
	FUNC4(dev, offset >> 8);
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	/* Send address low byte */
	FUNC4(dev, offset & 0x00ff);
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	/* Send address block size */
	FUNC4(dev, nwrite);
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	/* Should check status before writing FLASH block */

	/* Wait for status information */
	ret = FUNC1(dev);
	if (ret < 0)
		return ret;

	/* Read flash programming interface status */
	ret = FUNC2(dev, &status);
	if (ret < 0)
		return ret;
	if (status != C2PORT_COMMAND_OK)
		return -EBUSY;

	/* Write flash block */
	for (i = 0; i < nwrite; i++) {
		ret = FUNC4(dev, *(buffer+i));
		if (ret < 0)
			return ret;

		ret = FUNC0(dev);
		if (ret < 0)
			return ret;

	}

	/* Wait for last flash write to complete */
	ret = FUNC1(dev);
	if (ret < 0)
		return ret;

	return nwrite;
}