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
typedef  int u32 ;
struct TYPE_2__ {int x86; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(u32 dclr, int chan)
{
	FUNC1("F2x%d90 (DRAM Cfg Low): 0x%08x\n", chan, dclr);

	FUNC1("  DIMM type: %sbuffered; all DIMMs support ECC: %s\n",
		(dclr & FUNC0(16)) ?  "un" : "",
		(dclr & FUNC0(19)) ? "yes" : "no");

	FUNC1("  PAR/ERR parity: %s\n",
		(dclr & FUNC0(8)) ?  "enabled" : "disabled");

	if (boot_cpu_data.x86 == 0x10)
		FUNC1("  DCT 128bit mode width: %s\n",
			(dclr & FUNC0(11)) ?  "128b" : "64b");

	FUNC1("  x4 logical DIMMs present: L0: %s L1: %s L2: %s L3: %s\n",
		(dclr & FUNC0(12)) ?  "yes" : "no",
		(dclr & FUNC0(13)) ?  "yes" : "no",
		(dclr & FUNC0(14)) ?  "yes" : "no",
		(dclr & FUNC0(15)) ?  "yes" : "no");
}