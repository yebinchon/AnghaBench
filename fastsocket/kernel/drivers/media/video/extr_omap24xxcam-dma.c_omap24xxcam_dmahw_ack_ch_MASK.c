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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAMDMA_IRQSTATUS_L0 ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC3(unsigned long base, int dmach)
{
	u32 csr;

	csr = FUNC1(base, FUNC0(dmach));
	/* ack interrupt in CSR */
	FUNC2(base, FUNC0(dmach), csr);
	/* ack interrupt in IRQSTATUS */
	FUNC2(base, CAMDMA_IRQSTATUS_L0, (1 << dmach));

	return csr;
}