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
struct ioatdma_device {int version; } ;
struct dma_device {int dummy; } ;
struct dma_chan {struct dma_device* device; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 struct ioatdma_device* FUNC1 (struct dma_device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct dma_chan *c, char *page)
{
	struct dma_device *dma = c->device;
	struct ioatdma_device *device = FUNC1(dma);

	return FUNC0(page, "%d.%d\n",
		       device->version >> 4, device->version & 0xf);
}