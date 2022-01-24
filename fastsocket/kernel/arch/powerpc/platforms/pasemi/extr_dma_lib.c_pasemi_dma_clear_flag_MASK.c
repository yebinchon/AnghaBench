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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_FLAGS ; 
 int /*<<< orphan*/  PAS_DMA_TXF_CFLG0 ; 
 int /*<<< orphan*/  PAS_DMA_TXF_CFLG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(int flag)
{
	FUNC0(flag >= MAX_FLAGS);
	if (flag < 32)
		FUNC1(PAS_DMA_TXF_CFLG0, 1 << flag);
	else
		FUNC1(PAS_DMA_TXF_CFLG1, 1 << flag);
}