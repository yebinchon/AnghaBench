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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ DMA_CONTROL ; 
 int /*<<< orphan*/  DMA_CONTROL_TTC_128 ; 
 int /*<<< orphan*/  DMA_CONTROL_TTC_32 ; 
 int /*<<< orphan*/  DMA_CONTROL_TTC_64 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned long ioaddr, int txmode,
				      int rxmode)
{
	u32 csr6 = FUNC0(ioaddr + DMA_CONTROL);

	if (txmode <= 32)
		csr6 |= DMA_CONTROL_TTC_32;
	else if (txmode <= 64)
		csr6 |= DMA_CONTROL_TTC_64;
	else
		csr6 |= DMA_CONTROL_TTC_128;

	FUNC1(csr6, ioaddr + DMA_CONTROL);

	return;
}