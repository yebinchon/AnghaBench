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
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int MMW_FEE_ADDR_DS ; 
 int MMW_FEE_ADDR_EN ; 
 int MMW_FEE_CTRL_PRCLEAR ; 
 int MMW_FEE_CTRL_PREN ; 
 int MMW_FEE_CTRL_PRREAD ; 
 int MMW_FEE_CTRL_PRWRITE ; 
 int MMW_FEE_CTRL_WDS ; 
 int MMW_FEE_CTRL_WREN ; 
 int MMW_FEE_CTRL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmr_fee_data_h ; 
 int /*<<< orphan*/  mmr_fee_data_l ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmw_fee_addr ; 
 int /*<<< orphan*/  mmw_fee_ctrl ; 
 int /*<<< orphan*/  mmw_fee_data_h ; 
 int /*<<< orphan*/  mmw_fee_data_l ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(u_long	base,	/* i/o port of the card */
	  u_short	o,	/* destination offset */
	  u_short *	b,	/* data buffer */
	  int		n)	/* number of registers */
{
  b += n;		/* Position at the end of the area */

#ifdef EEPROM_IS_PROTECTED	/* disabled */
#ifdef DOESNT_SEEM_TO_WORK	/* disabled */
  /* Ask to read the protected register */
  mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_PRREAD);

  fee_wait(base, 10, 100);

  /* Read the protected register */
  printk("Protected 2 : %02X-%02X\n",
	 mmc_in(base, mmroff(0, mmr_fee_data_h)),
	 mmc_in(base, mmroff(0, mmr_fee_data_l)));
#endif	/* DOESNT_SEEM_TO_WORK */

  /* Enable protected register */
  mmc_out(base, mmwoff(0, mmw_fee_addr), MMW_FEE_ADDR_EN);
  mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_PREN);

  fee_wait(base, 10, 100);

  /* Unprotect area */
  mmc_out(base, mmwoff(0, mmw_fee_addr), o + n);
  mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_PRWRITE);
#ifdef DOESNT_SEEM_TO_WORK	/* disabled */
  /* Or use : */
  mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_PRCLEAR);
#endif	/* DOESNT_SEEM_TO_WORK */

  fee_wait(base, 10, 100);
#endif	/* EEPROM_IS_PROTECTED */

  /* Write enable */
  FUNC3(base, FUNC5(0, mmw_fee_addr), MMW_FEE_ADDR_EN);
  FUNC3(base, FUNC5(0, mmw_fee_ctrl), MMW_FEE_CTRL_WREN);

  FUNC0(base, 10, 100);

  /* Write the EEprom address */
  FUNC3(base, FUNC5(0, mmw_fee_addr), o + n - 1);

  /* Loop on all buffer */
  while(n-- > 0)
    {
      /* Write the value */
      FUNC3(base, FUNC5(0, mmw_fee_data_h), (*--b) >> 8);
      FUNC3(base, FUNC5(0, mmw_fee_data_l), *b & 0xFF);

      /* Write the write command */
      FUNC3(base, FUNC5(0, mmw_fee_ctrl), MMW_FEE_CTRL_WRITE);

      /* Wavelan doc says : wait at least 10 ms for EEBUSY = 0 */
      FUNC1(10);
      FUNC0(base, 10, 100);
    }

  /* Write disable */
  FUNC3(base, FUNC5(0, mmw_fee_addr), MMW_FEE_ADDR_DS);
  FUNC3(base, FUNC5(0, mmw_fee_ctrl), MMW_FEE_CTRL_WDS);

  FUNC0(base, 10, 100);

#ifdef EEPROM_IS_PROTECTED	/* disabled */
  /* Reprotect EEprom */
  mmc_out(base, mmwoff(0, mmw_fee_addr), 0x00);
  mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_PRWRITE);

  fee_wait(base, 10, 100);
#endif	/* EEPROM_IS_PROTECTED */
}