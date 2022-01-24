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
struct scatterlist {int /*<<< orphan*/  length; int /*<<< orphan*/  dma_address; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 

int FUNC2(struct device *dev, struct scatterlist *sg, int nents,
	       enum dma_data_direction dir)
{
	int i;

	for (i = 0; i < nents; sg++, i++) {
		sg->dma_address = FUNC1(sg);
		FUNC0(dev, sg->dma_address, sg->length, dir);
	}
	return nents;
}