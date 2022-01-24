#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vino_channel_settings {scalar_t__ channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 scalar_t__ VINO_CHANNEL_A ; 
 int /*<<< orphan*/  VINO_CTRL_A_DMA_ENBL ; 
 int /*<<< orphan*/  VINO_CTRL_A_INT ; 
 int /*<<< orphan*/  VINO_CTRL_B_DMA_ENBL ; 
 int /*<<< orphan*/  VINO_CTRL_B_INT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* vino ; 

__attribute__((used)) static inline void FUNC1(struct vino_channel_settings *vcs)
{
	u32 ctrl = vino->control;

	ctrl &= (vcs->channel == VINO_CHANNEL_A) ?
		~VINO_CTRL_A_DMA_ENBL : ~VINO_CTRL_B_DMA_ENBL;
	ctrl &= (vcs->channel == VINO_CHANNEL_A) ?
		~VINO_CTRL_A_INT : ~VINO_CTRL_B_INT;
	vino->control = ctrl;
	FUNC0("vino_dma_stop():\n");
}