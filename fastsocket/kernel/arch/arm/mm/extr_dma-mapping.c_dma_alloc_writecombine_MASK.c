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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 void* FUNC0 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgprot_kernel ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void *
FUNC2(struct device *dev, size_t size, dma_addr_t *handle, gfp_t gfp)
{
	return FUNC0(dev, size, handle, gfp,
			   FUNC1(pgprot_kernel));
}