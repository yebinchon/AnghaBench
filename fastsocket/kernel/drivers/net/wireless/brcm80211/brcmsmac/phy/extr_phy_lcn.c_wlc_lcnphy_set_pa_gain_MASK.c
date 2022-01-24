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
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_MASK ; 
 int LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_SHIFT ; 
 int /*<<< orphan*/  LCNPHY_txgainctrlovrval1_pagain_ovr_val1_MASK ; 
 int LCNPHY_txgainctrlovrval1_pagain_ovr_val1_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct brcms_phy *pi, u16 gain)
{
	FUNC0(pi, 0x4fb,
		    LCNPHY_txgainctrlovrval1_pagain_ovr_val1_MASK,
		    gain << LCNPHY_txgainctrlovrval1_pagain_ovr_val1_SHIFT);
	FUNC0(pi, 0x4fd,
		    LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_MASK,
		    gain << LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_SHIFT);
}