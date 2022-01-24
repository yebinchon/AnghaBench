#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int descriptorsAllocated; size_t bytesAllocated; int /*<<< orphan*/ * virtAddr; int /*<<< orphan*/  physAddr; } ;
typedef  TYPE_1__ DMA_DescriptorRing_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 size_t FUNC2 (int) ; 

int FUNC3(DMA_DescriptorRing_t *ring,	/* Descriptor ring to populate */
			      int numDescriptors	/* Number of descriptors that need to be allocated. */
    ) {
	size_t bytesToAlloc = FUNC2(numDescriptors);

	if ((ring == NULL) || (numDescriptors <= 0)) {
		return -EINVAL;
	}

	ring->physAddr = 0;
	ring->descriptorsAllocated = 0;
	ring->bytesAllocated = 0;

	ring->virtAddr = FUNC0(NULL,
						     bytesToAlloc,
						     &ring->physAddr,
						     GFP_KERNEL);
	if (ring->virtAddr == NULL) {
		return -ENOMEM;
	}

	ring->bytesAllocated = bytesToAlloc;
	ring->descriptorsAllocated = numDescriptors;

	return FUNC1(ring, numDescriptors);
}