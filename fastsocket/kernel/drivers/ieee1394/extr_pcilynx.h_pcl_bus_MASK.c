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
typedef  scalar_t__ u32 ;
struct ti_pcl {int dummy; } ;
struct ti_lynx {scalar_t__ pcl_mem_dma; } ;
typedef  int pcl_t ;

/* Variables and functions */

__attribute__((used)) static inline u32 FUNC0(const struct ti_lynx *lynx, pcl_t pclid)
{
        return lynx->pcl_mem_dma + pclid * sizeof(struct ti_pcl);
}