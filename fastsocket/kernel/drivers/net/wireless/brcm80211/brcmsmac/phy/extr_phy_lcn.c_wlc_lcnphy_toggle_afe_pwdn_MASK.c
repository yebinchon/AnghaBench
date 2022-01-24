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
 int FUNC0 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC2(struct brcms_phy *pi)
{
	u16 save_AfeCtrlOvrVal, save_AfeCtrlOvr;

	save_AfeCtrlOvrVal = FUNC0(pi, 0x43c);
	save_AfeCtrlOvr = FUNC0(pi, 0x43b);

	FUNC1(pi, 0x43c, save_AfeCtrlOvrVal | 0x1);
	FUNC1(pi, 0x43b, save_AfeCtrlOvr | 0x1);

	FUNC1(pi, 0x43c, save_AfeCtrlOvrVal & 0xfffe);
	FUNC1(pi, 0x43b, save_AfeCtrlOvr & 0xfffe);

	FUNC1(pi, 0x43c, save_AfeCtrlOvrVal);
	FUNC1(pi, 0x43b, save_AfeCtrlOvr);
}