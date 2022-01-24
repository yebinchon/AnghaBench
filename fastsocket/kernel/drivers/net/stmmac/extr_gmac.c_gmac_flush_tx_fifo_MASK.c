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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ DMA_CONTROL ; 
 int DMA_CONTROL_FTF ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned long ioaddr)
{
	u32 csr6 = FUNC0(ioaddr + DMA_CONTROL);
	FUNC1((csr6 | DMA_CONTROL_FTF), ioaddr + DMA_CONTROL);

	do {} while ((FUNC0(ioaddr + DMA_CONTROL) & DMA_CONTROL_FTF));
}