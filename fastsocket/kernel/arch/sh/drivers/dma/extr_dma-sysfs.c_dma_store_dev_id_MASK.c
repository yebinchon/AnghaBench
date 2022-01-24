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
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
struct dma_channel {int /*<<< orphan*/  dev_id; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 struct dma_channel* FUNC1 (struct sys_device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct sys_device *dev,
				struct sysdev_attribute *attr,
				const char *buf, size_t count)
{
	struct dma_channel *channel = FUNC1(dev);
	FUNC0(channel->dev_id, buf);
	return count;
}