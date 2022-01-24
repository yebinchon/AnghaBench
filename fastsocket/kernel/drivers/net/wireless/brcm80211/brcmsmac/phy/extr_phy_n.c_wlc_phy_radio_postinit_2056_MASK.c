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
struct brcms_phy {scalar_t__ phy_init_por; TYPE_1__* sh; } ;
struct TYPE_2__ {int boardflags2; } ;

/* Variables and functions */
 int BFL2_LEGACY ; 
 int BFL2_XTALBUFOUTEN ; 
 int /*<<< orphan*/  RADIO_2056_SYN_COM_CTRL ; 
 int /*<<< orphan*/  RADIO_2056_SYN_COM_PU ; 
 int /*<<< orphan*/  RADIO_2056_SYN_COM_RESET ; 
 int /*<<< orphan*/  RADIO_2056_SYN_PLL_MAST2 ; 
 int /*<<< orphan*/  RADIO_2056_SYN_RCCAL_CTRL0 ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*) ; 

__attribute__((used)) static void FUNC3(struct brcms_phy *pi)
{
	FUNC0(pi, RADIO_2056_SYN_COM_CTRL, 0xb, 0xb);

	FUNC0(pi, RADIO_2056_SYN_COM_PU, 0x2, 0x2);
	FUNC0(pi, RADIO_2056_SYN_COM_RESET, 0x2, 0x2);
	FUNC1(1000);
	FUNC0(pi, RADIO_2056_SYN_COM_RESET, 0x2, 0x0);

	if ((pi->sh->boardflags2 & BFL2_LEGACY)
	    || (pi->sh->boardflags2 & BFL2_XTALBUFOUTEN))
		FUNC0(pi, RADIO_2056_SYN_PLL_MAST2, 0xf4, 0x0);
	else
		FUNC0(pi, RADIO_2056_SYN_PLL_MAST2, 0xfc, 0x0);

	FUNC0(pi, RADIO_2056_SYN_RCCAL_CTRL0, 0x1, 0x0);

	if (pi->phy_init_por)
		FUNC2(pi);
}