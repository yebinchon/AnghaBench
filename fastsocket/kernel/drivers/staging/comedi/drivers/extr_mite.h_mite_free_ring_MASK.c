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
struct mite_dma_descriptor_ring {int n_links; int /*<<< orphan*/  hw_dev; int /*<<< orphan*/  descriptors_dma_addr; scalar_t__ descriptors; } ;
struct mite_dma_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mite_dma_descriptor_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mite_dma_descriptor_ring *ring)
{
	if (ring) {
		if (ring->descriptors) {
			FUNC0(ring->hw_dev,
					  ring->n_links *
					  sizeof(struct mite_dma_descriptor),
					  ring->descriptors,
					  ring->descriptors_dma_addr);
		}
		FUNC2(ring->hw_dev);
		FUNC1(ring);
	}
}