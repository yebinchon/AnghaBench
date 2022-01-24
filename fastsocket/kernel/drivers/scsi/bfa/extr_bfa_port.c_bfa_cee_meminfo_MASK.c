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
struct bfa_cee_stats_s {int dummy; } ;
struct bfa_cee_attr_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_DMA_ALIGN_SZ ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 

u32
FUNC1(void)
{
	return FUNC0(sizeof(struct bfa_cee_attr_s), BFA_DMA_ALIGN_SZ) +
		FUNC0(sizeof(struct bfa_cee_stats_s), BFA_DMA_ALIGN_SZ);
}