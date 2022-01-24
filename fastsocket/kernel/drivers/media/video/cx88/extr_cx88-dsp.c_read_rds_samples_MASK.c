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
struct sram_channel {int fifo_size; int ptr1_reg; int fifo_start; } ;
struct cx88_core {int dummy; } ;
typedef  void* s16 ;

/* Variables and functions */
 int AUD_RDS_LINES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MO_AUD_INTSTAT ; 
 size_t SRAM_CH27 ; 
 struct sram_channel* cx88_sram_channels ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int dsp_debug ; 
 void** FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static s16 *FUNC4(struct cx88_core *core, u32 *N)
{
	struct sram_channel *srch = &cx88_sram_channels[SRAM_CH27];
	s16 *samples;

	unsigned int i;
	unsigned int bpl = srch->fifo_size/AUD_RDS_LINES;
	unsigned int spl = bpl/4;
	unsigned int sample_count = spl*(AUD_RDS_LINES-1);

	u32 current_address = FUNC0(srch->ptr1_reg);
	u32 offset = (current_address - srch->fifo_start + bpl);

	FUNC1(1, "read RDS samples: current_address=%08x (offset=%08x), "
		"sample_count=%d, aud_intstat=%08x\n", current_address,
		current_address - srch->fifo_start, sample_count,
		FUNC0(MO_AUD_INTSTAT));

	samples = FUNC2(sizeof(s16)*sample_count, GFP_KERNEL);
	if (!samples)
		return NULL;

	*N = sample_count;

	for (i = 0; i < sample_count; i++)  {
		offset = offset % (AUD_RDS_LINES*bpl);
		samples[i] = FUNC0(srch->fifo_start + offset);
		offset += 4;
	}

	if (dsp_debug >= 2) {
		FUNC1(2, "RDS samples dump: ");
		for (i = 0; i < sample_count; i++)
			FUNC3("%hd ", samples[i]);
		FUNC3(".\n");
	}

	return samples;
}