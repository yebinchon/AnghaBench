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
 int /*<<< orphan*/  CAMDMA_GCR ; 
 int /*<<< orphan*/  CAMDMA_GCR_MAX_CHANNEL_FIFO_DEPTH ; 
 int /*<<< orphan*/  CAMDMA_IRQENABLE_L0 ; 
 int /*<<< orphan*/  CAMDMA_OCP_SYSCONFIG ; 
 int CAMDMA_OCP_SYSCONFIG_AUTOIDLE ; 
 int CAMDMA_OCP_SYSCONFIG_MIDLEMODE_FSTANDBY ; 
 int CAMDMA_OCP_SYSCONFIG_SIDLEMODE_FIDLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(unsigned long base)
{
	FUNC1(base, CAMDMA_OCP_SYSCONFIG,
			    CAMDMA_OCP_SYSCONFIG_MIDLEMODE_FSTANDBY
			    | CAMDMA_OCP_SYSCONFIG_SIDLEMODE_FIDLE
			    | CAMDMA_OCP_SYSCONFIG_AUTOIDLE);

	FUNC0(base, CAMDMA_GCR, 0x10,
			      CAMDMA_GCR_MAX_CHANNEL_FIFO_DEPTH);

	FUNC1(base, CAMDMA_IRQENABLE_L0, 0xf);
}