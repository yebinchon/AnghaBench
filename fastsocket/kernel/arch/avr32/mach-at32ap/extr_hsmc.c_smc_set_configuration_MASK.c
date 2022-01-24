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
struct smc_config {int bus_width; int nwait_mode; scalar_t__ tdf_mode; scalar_t__ byte_write; scalar_t__ nwe_controlled; scalar_t__ nrd_controlled; scalar_t__ tdf_cycles; scalar_t__ read_cycle; scalar_t__ write_cycle; scalar_t__ ncs_read_pulse; scalar_t__ nrd_pulse; scalar_t__ ncs_write_pulse; scalar_t__ nwe_pulse; scalar_t__ ncs_read_setup; scalar_t__ nrd_setup; scalar_t__ ncs_write_setup; scalar_t__ nwe_setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAT ; 
 scalar_t__ CYCLE0 ; 
 int /*<<< orphan*/  DBW ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  EXNW_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HSMC_DBW_16_BITS ; 
 scalar_t__ HSMC_DBW_32_BITS ; 
 scalar_t__ HSMC_DBW_8_BITS ; 
 scalar_t__ HSMC_EXNW_MODE_DISABLED ; 
 scalar_t__ HSMC_EXNW_MODE_FROZEN ; 
 scalar_t__ HSMC_EXNW_MODE_READY ; 
 scalar_t__ HSMC_EXNW_MODE_RESERVED ; 
 scalar_t__ MODE0 ; 
 int /*<<< orphan*/  NCS_RD_PULSE ; 
 int /*<<< orphan*/  NCS_RD_SETUP ; 
 int /*<<< orphan*/  NCS_WR_PULSE ; 
 int /*<<< orphan*/  NCS_WR_SETUP ; 
 int /*<<< orphan*/  NRD_CYCLE ; 
 int /*<<< orphan*/  NRD_PULSE ; 
 int /*<<< orphan*/  NRD_SETUP ; 
 int NR_CHIP_SELECTS ; 
 int /*<<< orphan*/  NWE_CYCLE ; 
 int /*<<< orphan*/  NWE_PULSE ; 
 int /*<<< orphan*/  NWE_SETUP ; 
 scalar_t__ PULSE0 ; 
 int /*<<< orphan*/  READ_MODE ; 
 scalar_t__ SETUP0 ; 
 int /*<<< orphan*/  TDF_CYCLES ; 
 int /*<<< orphan*/  TDF_MODE ; 
 int /*<<< orphan*/  WRITE_MODE ; 
 int /*<<< orphan*/  hsmc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int,int) ; 

int FUNC5(int cs, const struct smc_config *config)
{
	unsigned long offset;
	u32 setup, pulse, cycle, mode;

	if (!hsmc)
		return -ENODEV;
	if (cs >= NR_CHIP_SELECTS)
		return -EINVAL;

	setup = (FUNC0(NWE_SETUP, config->nwe_setup)
		 | FUNC0(NCS_WR_SETUP, config->ncs_write_setup)
		 | FUNC0(NRD_SETUP, config->nrd_setup)
		 | FUNC0(NCS_RD_SETUP, config->ncs_read_setup));
	pulse = (FUNC0(NWE_PULSE, config->nwe_pulse)
		 | FUNC0(NCS_WR_PULSE, config->ncs_write_pulse)
		 | FUNC0(NRD_PULSE, config->nrd_pulse)
		 | FUNC0(NCS_RD_PULSE, config->ncs_read_pulse));
	cycle = (FUNC0(NWE_CYCLE, config->write_cycle)
		 | FUNC0(NRD_CYCLE, config->read_cycle));

	switch (config->bus_width) {
	case 1:
		mode = FUNC0(DBW, HSMC_DBW_8_BITS);
		break;
	case 2:
		mode = FUNC0(DBW, HSMC_DBW_16_BITS);
		break;
	case 4:
		mode = FUNC0(DBW, HSMC_DBW_32_BITS);
		break;
	default:
		return -EINVAL;
	}

	switch (config->nwait_mode) {
	case 0:
		mode |= FUNC0(EXNW_MODE, HSMC_EXNW_MODE_DISABLED);
		break;
	case 1:
		mode |= FUNC0(EXNW_MODE, HSMC_EXNW_MODE_RESERVED);
		break;
	case 2:
		mode |= FUNC0(EXNW_MODE, HSMC_EXNW_MODE_FROZEN);
		break;
	case 3:
		mode |= FUNC0(EXNW_MODE, HSMC_EXNW_MODE_READY);
		break;
	default:
		return -EINVAL;
	}

	if (config->tdf_cycles) {
		mode |= FUNC0(TDF_CYCLES, config->tdf_cycles);
	}

	if (config->nrd_controlled)
		mode |= FUNC1(READ_MODE);
	if (config->nwe_controlled)
		mode |= FUNC1(WRITE_MODE);
	if (config->byte_write)
		mode |= FUNC1(BAT);
	if (config->tdf_mode)
		mode |= FUNC1(TDF_MODE);

	FUNC4("smc cs%d: setup/%08x pulse/%08x cycle/%08x mode/%08x\n",
		 cs, setup, pulse, cycle, mode);

	offset = cs * 0x10;
	FUNC3(hsmc, SETUP0 + offset, setup);
	FUNC3(hsmc, PULSE0 + offset, pulse);
	FUNC3(hsmc, CYCLE0 + offset, cycle);
	FUNC3(hsmc, MODE0 + offset, mode);
	FUNC2(hsmc, MODE0); /* I/O barrier */

	return 0;
}