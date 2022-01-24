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
typedef  int u16 ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int BBCFG_RESETCCA ; 
 int /*<<< orphan*/  NPHY_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 int FUNC0 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC5(struct brcms_phy *pi)
{
	u16 val;

	FUNC2(pi->sh->physhim, ON);

	val = FUNC0(pi, 0x01);
	FUNC4(pi, 0x01, val | BBCFG_RESETCCA);
	FUNC1(1);
	FUNC4(pi, 0x01, val & (~BBCFG_RESETCCA));

	FUNC2(pi->sh->physhim, OFF);

	FUNC3(pi, NPHY_RFSEQ_RESET2RX);
}