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
struct mca_device {int* pos; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int) ; 
 struct mca_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr, char *buf)
{
	/* enough for 8 two byte hex chars plus space and new line */
	int j, len=0;
	struct mca_device *mca_dev = FUNC1(dev);

	for(j=0; j<8; j++)
		len += FUNC0(buf+len, "%02x ", mca_dev->pos[j]);
	/* change last trailing space to new line */
	buf[len-1] = '\n';
	return len;
}