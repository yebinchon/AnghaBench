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
struct saa7146_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct saa7146_dev*,int,int) ; 
 int FUNC1 (struct saa7146_dev*,int,int) ; 

int FUNC2(struct saa7146_dev *dev, int nobusyloop)
{
	if (nobusyloop)
		return FUNC1(dev, 50000, 250000);
	else
		return FUNC0(dev, 50000, 250000);
}