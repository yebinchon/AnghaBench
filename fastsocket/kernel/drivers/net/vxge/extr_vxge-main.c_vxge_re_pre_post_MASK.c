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
struct vxge_rx_priv {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data_dma; } ;
struct vxge_ring {int /*<<< orphan*/  handle; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static inline void FUNC3(void *dtr, struct vxge_ring *ring,
				    struct vxge_rx_priv *rx_priv)
{
	FUNC0(ring->pdev,
		rx_priv->data_dma, rx_priv->data_size, PCI_DMA_FROMDEVICE);

	FUNC1(dtr, rx_priv->data_dma, rx_priv->data_size);
	FUNC2(ring->handle, dtr);
}