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
typedef  int u16 ;
struct brcms_phy {scalar_t__* tx_power_offset; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 size_t TXP_FIRST_CCK ; 
 int FUNC0 (struct brcms_phy*,int) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 

void FUNC3(struct brcms_phy *pi, s8 *ofdm_pwr, s8 *cck_pwr)
{
	s8 cck_offset;
	u16 status;
	status = (FUNC0(pi, 0x4ab));
	if (FUNC1(pi) &&
	    (status  & (0x1 << 15))) {
		*ofdm_pwr = (s8) (((FUNC0(pi, 0x4ab) & (0x1ff << 0))
				   >> 0) >> 1);

		if (FUNC2(pi))
			cck_offset = pi->tx_power_offset[TXP_FIRST_CCK];
		else
			cck_offset = 0;

		*cck_pwr = *ofdm_pwr + cck_offset;
	} else {
		*cck_pwr = 0;
		*ofdm_pwr = 0;
	}
}