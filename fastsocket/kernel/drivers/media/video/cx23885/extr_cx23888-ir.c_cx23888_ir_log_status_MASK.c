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
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int CDUTY_CDC ; 
 int CNTRL_CPL ; 
 int CNTRL_DMD ; 
 int CNTRL_EDG ; 
#define  CNTRL_EDG_BOTH 135 
#define  CNTRL_EDG_FALL 134 
#define  CNTRL_EDG_NONE 133 
#define  CNTRL_EDG_RISE 132 
 int CNTRL_IVO ; 
 int CNTRL_LBM ; 
 int CNTRL_MOD ; 
 int CNTRL_R ; 
 int CNTRL_RFE ; 
 int CNTRL_RIC ; 
 int CNTRL_RXE ; 
 int CNTRL_TFE ; 
 int CNTRL_TIC ; 
 int CNTRL_TXE ; 
 int CNTRL_WIN ; 
#define  CNTRL_WIN_3_3 131 
#define  CNTRL_WIN_3_4 130 
#define  CNTRL_WIN_4_3 129 
#define  CNTRL_WIN_4_4 128 
 int /*<<< orphan*/  CX23888_IR_CDUTY_REG ; 
 int /*<<< orphan*/  CX23888_IR_CNTRL_REG ; 
 int /*<<< orphan*/  CX23888_IR_FILTR_REG ; 
 int /*<<< orphan*/  CX23888_IR_IRQEN_REG ; 
 int /*<<< orphan*/  CX23888_IR_RXCLK_REG ; 
 int /*<<< orphan*/  CX23888_IR_STATS_REG ; 
 int /*<<< orphan*/  CX23888_IR_TXCLK_REG ; 
 int /*<<< orphan*/  FIFO_RXTX ; 
 int FILTR_LPF ; 
 int IRQEN_ROE ; 
 int IRQEN_RSE ; 
 int IRQEN_RTE ; 
 int IRQEN_TSE ; 
 int RXCLK_RCD ; 
 int STATS_RBY ; 
 int STATS_ROR ; 
 int STATS_RSR ; 
 int STATS_RTO ; 
 int STATS_TBY ; 
 int STATS_TSR ; 
 int TXCLK_TCD ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct cx23888_ir_state* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,char*,...) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd)
{
	struct cx23888_ir_state *state = FUNC7(sd);
	struct cx23885_dev *dev = state->dev;
	char *s;
	int i, j;

	u32 cntrl = FUNC2(dev, CX23888_IR_CNTRL_REG);
	u32 txclk = FUNC2(dev, CX23888_IR_TXCLK_REG) & TXCLK_TCD;
	u32 rxclk = FUNC2(dev, CX23888_IR_RXCLK_REG) & RXCLK_RCD;
	u32 cduty = FUNC2(dev, CX23888_IR_CDUTY_REG) & CDUTY_CDC;
	u32 stats = FUNC2(dev, CX23888_IR_STATS_REG);
	u32 irqen = FUNC2(dev, CX23888_IR_IRQEN_REG);
	u32 filtr = FUNC2(dev, CX23888_IR_FILTR_REG) & FILTR_LPF;

	FUNC8(sd, "IR Receiver:\n");
	FUNC8(sd, "\tEnabled:                           %s\n",
		  cntrl & CNTRL_RXE ? "yes" : "no");
	FUNC8(sd, "\tDemodulation from a carrier:       %s\n",
		  cntrl & CNTRL_DMD ? "enabled" : "disabled");
	FUNC8(sd, "\tFIFO:                              %s\n",
		  cntrl & CNTRL_RFE ? "enabled" : "disabled");
	switch (cntrl & CNTRL_EDG) {
	case CNTRL_EDG_NONE:
		s = "disabled";
		break;
	case CNTRL_EDG_FALL:
		s = "falling edge";
		break;
	case CNTRL_EDG_RISE:
		s = "rising edge";
		break;
	case CNTRL_EDG_BOTH:
		s = "rising & falling edges";
		break;
	default:
		s = "??? edge";
		break;
	}
	FUNC8(sd, "\tPulse timers' start/stop trigger:  %s\n", s);
	FUNC8(sd, "\tFIFO data on pulse timer overflow: %s\n",
		  cntrl & CNTRL_R ? "not loaded" : "overflow marker");
	FUNC8(sd, "\tFIFO interrupt watermark:          %s\n",
		  cntrl & CNTRL_RIC ? "not empty" : "half full or greater");
	FUNC8(sd, "\tLoopback mode:                     %s\n",
		  cntrl & CNTRL_LBM ? "loopback active" : "normal receive");
	if (cntrl & CNTRL_DMD) {
		FUNC8(sd, "\tExpected carrier (16 clocks):      %u Hz\n",
			  FUNC0(rxclk));
		switch (cntrl & CNTRL_WIN) {
		case CNTRL_WIN_3_3:
			i = 3;
			j = 3;
			break;
		case CNTRL_WIN_4_3:
			i = 4;
			j = 3;
			break;
		case CNTRL_WIN_3_4:
			i = 3;
			j = 4;
			break;
		case CNTRL_WIN_4_4:
			i = 4;
			j = 4;
			break;
		default:
			i = 0;
			j = 0;
			break;
		}
		FUNC8(sd, "\tNext carrier edge window:          16 clocks "
			  "-%1d/+%1d, %u to %u Hz\n", i, j,
			  FUNC1(rxclk, 16 + j),
			  FUNC1(rxclk, 16 - i));
	}
	FUNC8(sd, "\tMax measurable pulse width:        %u us, %llu ns\n",
		  FUNC6(FIFO_RXTX, rxclk),
		  FUNC5(FIFO_RXTX, rxclk));
	FUNC8(sd, "\tLow pass filter:                   %s\n",
		  filtr ? "enabled" : "disabled");
	if (filtr)
		FUNC8(sd, "\tMin acceptable pulse width (LPF):  %u us, "
			  "%u ns\n",
			  FUNC4(filtr),
			  FUNC3(filtr));
	FUNC8(sd, "\tPulse width timer timed-out:       %s\n",
		  stats & STATS_RTO ? "yes" : "no");
	FUNC8(sd, "\tPulse width timer time-out intr:   %s\n",
		  irqen & IRQEN_RTE ? "enabled" : "disabled");
	FUNC8(sd, "\tFIFO overrun:                      %s\n",
		  stats & STATS_ROR ? "yes" : "no");
	FUNC8(sd, "\tFIFO overrun interrupt:            %s\n",
		  irqen & IRQEN_ROE ? "enabled" : "disabled");
	FUNC8(sd, "\tBusy:                              %s\n",
		  stats & STATS_RBY ? "yes" : "no");
	FUNC8(sd, "\tFIFO service requested:            %s\n",
		  stats & STATS_RSR ? "yes" : "no");
	FUNC8(sd, "\tFIFO service request interrupt:    %s\n",
		  irqen & IRQEN_RSE ? "enabled" : "disabled");

	FUNC8(sd, "IR Transmitter:\n");
	FUNC8(sd, "\tEnabled:                           %s\n",
		  cntrl & CNTRL_TXE ? "yes" : "no");
	FUNC8(sd, "\tModulation onto a carrier:         %s\n",
		  cntrl & CNTRL_MOD ? "enabled" : "disabled");
	FUNC8(sd, "\tFIFO:                              %s\n",
		  cntrl & CNTRL_TFE ? "enabled" : "disabled");
	FUNC8(sd, "\tFIFO interrupt watermark:          %s\n",
		  cntrl & CNTRL_TIC ? "not empty" : "half full or less");
	FUNC8(sd, "\tOutput pin level inversion         %s\n",
		  cntrl & CNTRL_IVO ? "yes" : "no");
	FUNC8(sd, "\tCarrier polarity:                  %s\n",
		  cntrl & CNTRL_CPL ? "space:burst mark:noburst"
				    : "space:noburst mark:burst");
	if (cntrl & CNTRL_MOD) {
		FUNC8(sd, "\tCarrier (16 clocks):               %u Hz\n",
			  FUNC0(txclk));
		FUNC8(sd, "\tCarrier duty cycle:                %2u/16\n",
			  cduty + 1);
	}
	FUNC8(sd, "\tMax pulse width:                   %u us, %llu ns\n",
		  FUNC6(FIFO_RXTX, txclk),
		  FUNC5(FIFO_RXTX, txclk));
	FUNC8(sd, "\tBusy:                              %s\n",
		  stats & STATS_TBY ? "yes" : "no");
	FUNC8(sd, "\tFIFO service requested:            %s\n",
		  stats & STATS_TSR ? "yes" : "no");
	FUNC8(sd, "\tFIFO service request interrupt:    %s\n",
		  irqen & IRQEN_TSE ? "enabled" : "disabled");

	return 0;
}