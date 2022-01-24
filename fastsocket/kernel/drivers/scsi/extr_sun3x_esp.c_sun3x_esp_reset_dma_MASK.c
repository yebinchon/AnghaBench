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
 int DMA_INT_ENAB ; 
 int DMA_RST_SCSI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct esp *esp)
{
	u32 val;

	val = FUNC0(DMA_CSR);
	FUNC1(val | DMA_RST_SCSI, DMA_CSR);
	FUNC1(val & ~DMA_RST_SCSI, DMA_CSR);

	/* Enable interrupts.  */
	val = FUNC0(DMA_CSR);
	FUNC1(val | DMA_INT_ENAB, DMA_CSR);
}