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
struct esp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CSR ; 
 int DMA_HNDL_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct esp *esp)
{
	u32 csr = FUNC0(DMA_CSR);

	if (csr & DMA_HNDL_ERROR)
		return 1;

	return 0;
}