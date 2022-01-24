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
 int /*<<< orphan*/  CCDC_ALAW ; 
 int /*<<< orphan*/  CCDC_BLKCMP ; 
 int /*<<< orphan*/  CCDC_CLAMP ; 
 int /*<<< orphan*/  CCDC_COLPTN ; 
 int /*<<< orphan*/  CCDC_DCSUB ; 
 int /*<<< orphan*/  CCDC_FMTCFG ; 
 int /*<<< orphan*/  CCDC_FMT_HORZ ; 
 int /*<<< orphan*/  CCDC_FMT_VERT ; 
 int /*<<< orphan*/  CCDC_FPC ; 
 int /*<<< orphan*/  CCDC_FPC_ADDR ; 
 int /*<<< orphan*/  CCDC_HORZ_INFO ; 
 int /*<<< orphan*/  CCDC_HSIZE_OFF ; 
 int /*<<< orphan*/  CCDC_SDOFST ; 
 int /*<<< orphan*/  CCDC_SYN_MODE ; 
 int /*<<< orphan*/  CCDC_VERT_LINES ; 
 int /*<<< orphan*/  CCDC_VERT_START ; 
 int /*<<< orphan*/  CCDC_VP_OUT ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int val = 0;

	val = FUNC1(CCDC_ALAW);
	FUNC0(dev, "\nReading 0x%x to ALAW...\n", val);
	val = FUNC1(CCDC_CLAMP);
	FUNC0(dev, "\nReading 0x%x to CLAMP...\n", val);
	val = FUNC1(CCDC_DCSUB);
	FUNC0(dev, "\nReading 0x%x to DCSUB...\n", val);
	val = FUNC1(CCDC_BLKCMP);
	FUNC0(dev, "\nReading 0x%x to BLKCMP...\n", val);
	val = FUNC1(CCDC_FPC_ADDR);
	FUNC0(dev, "\nReading 0x%x to FPC_ADDR...\n", val);
	val = FUNC1(CCDC_FPC);
	FUNC0(dev, "\nReading 0x%x to FPC...\n", val);
	val = FUNC1(CCDC_FMTCFG);
	FUNC0(dev, "\nReading 0x%x to FMTCFG...\n", val);
	val = FUNC1(CCDC_COLPTN);
	FUNC0(dev, "\nReading 0x%x to COLPTN...\n", val);
	val = FUNC1(CCDC_FMT_HORZ);
	FUNC0(dev, "\nReading 0x%x to FMT_HORZ...\n", val);
	val = FUNC1(CCDC_FMT_VERT);
	FUNC0(dev, "\nReading 0x%x to FMT_VERT...\n", val);
	val = FUNC1(CCDC_HSIZE_OFF);
	FUNC0(dev, "\nReading 0x%x to HSIZE_OFF...\n", val);
	val = FUNC1(CCDC_SDOFST);
	FUNC0(dev, "\nReading 0x%x to SDOFST...\n", val);
	val = FUNC1(CCDC_VP_OUT);
	FUNC0(dev, "\nReading 0x%x to VP_OUT...\n", val);
	val = FUNC1(CCDC_SYN_MODE);
	FUNC0(dev, "\nReading 0x%x to SYN_MODE...\n", val);
	val = FUNC1(CCDC_HORZ_INFO);
	FUNC0(dev, "\nReading 0x%x to HORZ_INFO...\n", val);
	val = FUNC1(CCDC_VERT_START);
	FUNC0(dev, "\nReading 0x%x to VERT_START...\n", val);
	val = FUNC1(CCDC_VERT_LINES);
	FUNC0(dev, "\nReading 0x%x to VERT_LINES...\n", val);
}