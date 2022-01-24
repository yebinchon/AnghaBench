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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int adbits; int reg_type; } ;
struct TYPE_3__ {unsigned int* ai_offset; int (* stc_readw ) (struct comedi_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stc_writew ) (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_FIFO_Data_611x ; 
 int /*<<< orphan*/  ADC_FIFO_Data_Register ; 
 int /*<<< orphan*/  AIFIFO_Control_6143 ; 
 int /*<<< orphan*/  AIFIFO_Data_6143 ; 
 int /*<<< orphan*/  AIFIFO_Status_6143 ; 
 int /*<<< orphan*/  AI_CONVERT_Pulse ; 
 int /*<<< orphan*/  AI_Command_1_Register ; 
 int AI_FIFO_Empty_St ; 
 int /*<<< orphan*/  AI_Status_1_Register ; 
 int ETIME ; 
 int /*<<< orphan*/  M_Offset_AI_FIFO_Data ; 
 int NI_TIMEOUT ; 
 int /*<<< orphan*/  XXX_Status ; 
 TYPE_2__ boardtype ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int const FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC4 (int /*<<< orphan*/ ) ; 
 int ni_reg_611x ; 
 int ni_reg_6143 ; 
 int ni_reg_m_series_mask ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int num_adc_stages_611x ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_insn *insn,
			   unsigned int *data)
{
	int i, n;
	const unsigned int mask = (1 << boardtype.adbits) - 1;
	unsigned signbits;
	unsigned short d;
	unsigned long dl;

	FUNC1(dev, 1, &insn->chanspec);

	FUNC0(dev);

	signbits = devpriv->ai_offset[0];
	if (boardtype.reg_type == ni_reg_611x) {
		for (n = 0; n < num_adc_stages_611x; n++) {
			devpriv->stc_writew(dev, AI_CONVERT_Pulse,
					    AI_Command_1_Register);
			FUNC13(1);
		}
		for (n = 0; n < insn->n; n++) {
			devpriv->stc_writew(dev, AI_CONVERT_Pulse,
					    AI_Command_1_Register);
			/* The 611x has screwy 32-bit FIFOs. */
			d = 0;
			for (i = 0; i < NI_TIMEOUT; i++) {
				if (FUNC2(XXX_Status) & 0x80) {
					d = (FUNC3(ADC_FIFO_Data_611x) >> 16)
					    & 0xffff;
					break;
				}
				if (!(devpriv->stc_readw(dev,
							 AI_Status_1_Register) &
				      AI_FIFO_Empty_St)) {
					d = FUNC3(ADC_FIFO_Data_611x) &
					    0xffff;
					break;
				}
			}
			if (i == NI_TIMEOUT) {
				FUNC6
				    ("ni_mio_common: timeout in 611x ni_ai_insn_read\n");
				return -ETIME;
			}
			d += signbits;
			data[n] = d;
		}
	} else if (boardtype.reg_type == ni_reg_6143) {
		for (n = 0; n < insn->n; n++) {
			devpriv->stc_writew(dev, AI_CONVERT_Pulse,
					    AI_Command_1_Register);

			/* The 6143 has 32-bit FIFOs. You need to strobe a bit to move a single 16bit stranded sample into the FIFO */
			dl = 0;
			for (i = 0; i < NI_TIMEOUT; i++) {
				if (FUNC3(AIFIFO_Status_6143) & 0x01) {
					FUNC5(0x01, AIFIFO_Control_6143);	/*  Get stranded sample into FIFO */
					dl = FUNC3(AIFIFO_Data_6143);
					break;
				}
			}
			if (i == NI_TIMEOUT) {
				FUNC6
				    ("ni_mio_common: timeout in 6143 ni_ai_insn_read\n");
				return -ETIME;
			}
			data[n] = (((dl >> 16) & 0xFFFF) + signbits) & 0xFFFF;
		}
	} else {
		for (n = 0; n < insn->n; n++) {
			devpriv->stc_writew(dev, AI_CONVERT_Pulse,
					    AI_Command_1_Register);
			for (i = 0; i < NI_TIMEOUT; i++) {
				if (!(devpriv->stc_readw(dev,
							 AI_Status_1_Register) &
				      AI_FIFO_Empty_St))
					break;
			}
			if (i == NI_TIMEOUT) {
				FUNC6
				    ("ni_mio_common: timeout in ni_ai_insn_read\n");
				return -ETIME;
			}
			if (boardtype.reg_type & ni_reg_m_series_mask) {
				data[n] =
				    FUNC3(M_Offset_AI_FIFO_Data) & mask;
			} else {
				d = FUNC4(ADC_FIFO_Data_Register);
				d += signbits;	/* subtle: needs to be short addition */
				data[n] = d;
			}
		}
	}
	return insn->n;
}