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
struct lcnphy_txgains {int gm_gain; int pga_gain; int pad_gain; int /*<<< orphan*/  dac_gain; } ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 
 int FUNC2 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct brcms_phy *pi,
				   struct lcnphy_txgains *target_gains)
{
	u16 pa_gain = FUNC2(pi);

	FUNC0(
		pi, 0x4b5,
		(0xffff << 0),
		((target_gains->gm_gain) |
		 (target_gains->pga_gain << 8)) <<
		0);
	FUNC0(pi, 0x4fb,
		    (0x7fff << 0),
		    ((target_gains->pad_gain) | (pa_gain << 8)) << 0);

	FUNC0(
		pi, 0x4fc,
		(0xffff << 0),
		((target_gains->gm_gain) |
		 (target_gains->pga_gain << 8)) <<
		0);
	FUNC0(pi, 0x4fd,
		    (0x7fff << 0),
		    ((target_gains->pad_gain) | (pa_gain << 8)) << 0);

	FUNC3(pi, target_gains->dac_gain);

	FUNC1(pi);
}