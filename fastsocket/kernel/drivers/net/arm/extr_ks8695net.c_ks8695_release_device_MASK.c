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
struct ks8695_priv {int /*<<< orphan*/  ring_base_dma; int /*<<< orphan*/  ring_base; int /*<<< orphan*/  dev; scalar_t__ phyiface_req; scalar_t__ regs_req; scalar_t__ phyiface_regs; scalar_t__ io_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  RING_DMA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct ks8695_priv *ksp)
{
	/* Unmap the registers */
	FUNC1(ksp->io_regs);
	if (ksp->phyiface_regs)
		FUNC1(ksp->phyiface_regs);

	/* And release the request */
	FUNC3(ksp->regs_req);
	FUNC2(ksp->regs_req);
	if (ksp->phyiface_req) {
		FUNC3(ksp->phyiface_req);
		FUNC2(ksp->phyiface_req);
	}

	/* Free the ring buffers */
	FUNC0(ksp->dev, RING_DMA_SIZE,
			  ksp->ring_base, ksp->ring_base_dma);
}