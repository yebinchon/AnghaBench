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
struct videobuf_dma_contig_memory {scalar_t__ size; scalar_t__ dma_handle; scalar_t__ is_userptr; } ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(struct videobuf_dma_contig_memory *mem)
{
	mem->is_userptr = 0;
	mem->dma_handle = 0;
	mem->size = 0;
}