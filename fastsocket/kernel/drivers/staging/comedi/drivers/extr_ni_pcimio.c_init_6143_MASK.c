#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int ai_fifo_depth; } ;
struct TYPE_3__ {int ai_calib_source; scalar_t__ ai_calib_source_enabled; int /*<<< orphan*/  (* stc_writew ) (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AIFIFO_Flag_6143 ; 
 int /*<<< orphan*/  Calibration_Channel_6143 ; 
 int Calibration_Channel_6143_RelayOff ; 
 int /*<<< orphan*/  EOC_Set_6143 ; 
 int /*<<< orphan*/  Interrupt_Control_Register ; 
 int /*<<< orphan*/  Magic_6143 ; 
 int /*<<< orphan*/  PipelineDelay_6143 ; 
 TYPE_2__ boardtype ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	/*  Disable interrupts */
	devpriv->stc_writew(dev, 0, Interrupt_Control_Register);

	/*  Initialise 6143 AI specific bits */
	FUNC0(0x00, Magic_6143);	/*  Set G0,G1 DMA mode to E series version */
	FUNC0(0x80, PipelineDelay_6143);	/*  Set EOCMode, ADCMode and pipelinedelay */
	FUNC0(0x00, EOC_Set_6143);	/*  Set EOC Delay */

	FUNC1(boardtype.ai_fifo_depth / 2, AIFIFO_Flag_6143);	/*  Set the FIFO half full level */

	/*  Strobe Relay disable bit */
	devpriv->ai_calib_source_enabled = 0;
	FUNC2(devpriv->ai_calib_source | Calibration_Channel_6143_RelayOff,
		  Calibration_Channel_6143);
	FUNC2(devpriv->ai_calib_source, Calibration_Channel_6143);
}