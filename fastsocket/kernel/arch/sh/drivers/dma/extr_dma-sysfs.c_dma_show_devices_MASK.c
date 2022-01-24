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
struct dma_info {char* name; } ;
struct dma_channel {int chan; char* dev_id; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int MAX_DMA_CHANNELS ; 
 struct dma_channel* FUNC0 (int) ; 
 struct dma_info* FUNC1 (int) ; 
 int FUNC2 (char*,char*,int,char*,char*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static ssize_t FUNC4(struct sys_device *dev,
				struct sysdev_attribute *attr, char *buf)
{
	ssize_t len = 0;
	int i;

	for (i = 0; i < MAX_DMA_CHANNELS; i++) {
		struct dma_info *info = FUNC1(i);
		struct dma_channel *channel = FUNC0(i);

		if (FUNC3(!info) || !channel)
			continue;

		len += FUNC2(buf + len, "%2d: %14s    %s\n",
			       channel->chan, info->name,
			       channel->dev_id);
	}

	return len;
}