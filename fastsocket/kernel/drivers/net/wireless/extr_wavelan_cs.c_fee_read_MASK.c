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
 int MMW_FEE_CTRL_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmr_fee_data_h ; 
 int /*<<< orphan*/  mmr_fee_data_l ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmw_fee_addr ; 
 int /*<<< orphan*/  mmw_fee_ctrl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(u_long		base,	/* i/o port of the card */
	 u_short	o,	/* destination offset */
	 u_short *	b,	/* data buffer */
	 int		n)	/* number of registers */
{
  b += n;		/* Position at the end of the area */

  /* Write the address */
  FUNC2(base, FUNC4(0, mmw_fee_addr), o + n - 1);

  /* Loop on all buffer */
  while(n-- > 0)
    {
      /* Write the read command */
      FUNC2(base, FUNC4(0, mmw_fee_ctrl), MMW_FEE_CTRL_READ);

      /* Wait until EEprom is ready (should be quick !) */
      FUNC0(base, 10, 100);

      /* Read the value */
      *--b = ((FUNC1(base, FUNC3(0, mmr_fee_data_h)) << 8) |
	      FUNC1(base, FUNC3(0, mmr_fee_data_l)));
    }
}