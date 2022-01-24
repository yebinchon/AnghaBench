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
typedef  scalar_t__ u64 ;
typedef  enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;

/* Variables and functions */
 int B43_DMA_30BIT ; 
 int B43_DMA_32BIT ; 
 int B43_DMA_64BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static enum b43_dmatype FUNC2(u64 dmamask)
{
	if (dmamask == FUNC1(30))
		return B43_DMA_30BIT;
	if (dmamask == FUNC1(32))
		return B43_DMA_32BIT;
	if (dmamask == FUNC1(64))
		return B43_DMA_64BIT;
	FUNC0(1);
	return B43_DMA_30BIT;
}