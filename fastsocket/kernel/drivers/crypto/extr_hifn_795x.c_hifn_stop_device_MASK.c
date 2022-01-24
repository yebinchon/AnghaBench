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
struct hifn_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_0_PUIER ; 
 int /*<<< orphan*/  HIFN_1_DMA_CSR ; 
 int /*<<< orphan*/  HIFN_1_DMA_IER ; 
 int HIFN_DMACSR_C_CTRL_DIS ; 
 int HIFN_DMACSR_D_CTRL_DIS ; 
 int HIFN_DMACSR_R_CTRL_DIS ; 
 int HIFN_DMACSR_S_CTRL_DIS ; 
 int /*<<< orphan*/  FUNC0 (struct hifn_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hifn_device *dev)
{
	FUNC1(dev, HIFN_1_DMA_CSR,
		HIFN_DMACSR_D_CTRL_DIS | HIFN_DMACSR_R_CTRL_DIS |
		HIFN_DMACSR_S_CTRL_DIS | HIFN_DMACSR_C_CTRL_DIS);
	FUNC0(dev, HIFN_0_PUIER, 0);
	FUNC1(dev, HIFN_1_DMA_IER, 0);
}