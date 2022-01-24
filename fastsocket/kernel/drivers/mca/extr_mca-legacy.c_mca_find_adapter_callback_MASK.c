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
struct mca_find_adapter_info {scalar_t__ id; scalar_t__ slot; struct mca_device* mca_dev; } ;
struct mca_device {scalar_t__ pos_id; scalar_t__ slot; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mca_device* FUNC0 (struct device*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, void *data)
{
	struct mca_find_adapter_info *info = data;
	struct mca_device *mca_dev = FUNC0(dev);

	if(mca_dev->pos_id != info->id)
		return 0;

	if(mca_dev->slot < info->slot)
		return 0;

	if(!info->mca_dev || info->mca_dev->slot >= mca_dev->slot)
		info->mca_dev = mca_dev;

	return 0;
}