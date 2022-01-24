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
typedef  size_t ssize_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 size_t C2PORT_BLOCK_READ ; 
 size_t C2PORT_COMMAND_OK ; 
 int /*<<< orphan*/  C2PORT_FPDAT ; 
 size_t EBUSY ; 
 int FUNC0 (struct c2port_device*) ; 
 int FUNC1 (struct c2port_device*) ; 
 int FUNC2 (struct c2port_device*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct c2port_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct c2port_device*,size_t) ; 

__attribute__((used)) static ssize_t FUNC5(struct c2port_device *dev,
				char *buffer, loff_t offset, size_t count)
{
	struct c2port_ops *ops = dev->ops;
	u8 status, nread = 128;
	int i, ret;

	/* Check for flash end */
	if (offset >= ops->block_size * ops->blocks_num)
		return 0;

	if (ops->block_size * ops->blocks_num - offset < nread)
		nread = ops->block_size * ops->blocks_num - offset;
	if (count < nread)
		nread = count;
	if (nread == 0)
		return nread;

	/* Target the C2 flash programming data register for C2 data register
	 * access */
	FUNC3(dev, C2PORT_FPDAT);

	/* Send flash block read command */
	FUNC4(dev, C2PORT_BLOCK_READ);

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
	FUNC4(dev, nread);
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	/* Should check status before reading FLASH block */

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

	/* Read flash block */
	for (i = 0; i < nread; i++) {
		ret = FUNC1(dev);
		if (ret < 0)
			return ret;

		ret = FUNC2(dev, buffer+i);
		if (ret < 0)
			return ret;
	}

	return nread;
}