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
 int /*<<< orphan*/  DSP_MsaAddrHigh ; 
 int /*<<< orphan*/  DSP_MsaAddrLow ; 
 int /*<<< orphan*/  DSP_MsaDataDSISHigh ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned short,unsigned long,unsigned short) ; 
 int /*<<< orphan*/  TRACE_3780I ; 
 int /*<<< orphan*/  dsp_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned short usDspBaseIO,
                          unsigned long ulMsaAddr, unsigned short usValue)
{
	unsigned long flags;

	FUNC1(TRACE_3780I,
		"3780i::dsp3780i_WriteMsaCfg entry usDspBaseIO %x ulMsaAddr %lx usValue %x\n",
		usDspBaseIO, ulMsaAddr, usValue);

	FUNC2(&dsp_lock, flags);
	FUNC0(DSP_MsaAddrLow, (unsigned short) ulMsaAddr);
	FUNC0(DSP_MsaAddrHigh, (unsigned short) (ulMsaAddr >> 16));
	FUNC0(DSP_MsaDataDSISHigh, usValue);
	FUNC3(&dsp_lock, flags);
}