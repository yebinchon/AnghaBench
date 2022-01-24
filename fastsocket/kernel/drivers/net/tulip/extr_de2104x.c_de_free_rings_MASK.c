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
struct de_private {int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  ring_dma; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE_RING_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (struct de_private *de)
{
	FUNC0(de);
	FUNC1(de->pdev, DE_RING_BYTES, de->rx_ring, de->ring_dma);
	de->rx_ring = NULL;
	de->tx_ring = NULL;
}