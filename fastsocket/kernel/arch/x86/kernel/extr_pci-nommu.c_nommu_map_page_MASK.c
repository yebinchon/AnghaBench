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
struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ bad_dma_address ; 
 int /*<<< orphan*/  FUNC1 (char*,struct device*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct page*) ; 

__attribute__((used)) static dma_addr_t FUNC4(struct device *dev, struct page *page,
				 unsigned long offset, size_t size,
				 enum dma_data_direction dir,
				 struct dma_attrs *attrs)
{
	dma_addr_t bus = FUNC3(page) + offset;
	FUNC0(size == 0);
	if (!FUNC1("map_single", dev, bus, size))
		return bad_dma_address;
	FUNC2();
	return bus;
}