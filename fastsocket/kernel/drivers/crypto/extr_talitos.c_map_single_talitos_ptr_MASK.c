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
struct talitos_ptr {unsigned char j_extent; int /*<<< orphan*/  len; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC2 (struct talitos_ptr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev,
				   struct talitos_ptr *talitos_ptr,
				   unsigned short len, void *data,
				   unsigned char extent,
				   enum dma_data_direction dir)
{
	dma_addr_t dma_addr = FUNC1(dev, data, len, dir);

	talitos_ptr->len = FUNC0(len);
	FUNC2(talitos_ptr, dma_addr);
	talitos_ptr->j_extent = extent;
}