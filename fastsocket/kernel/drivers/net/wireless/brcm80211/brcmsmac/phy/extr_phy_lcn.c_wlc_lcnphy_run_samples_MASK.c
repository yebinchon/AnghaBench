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
 int /*<<< orphan*/  RADIO_2064_REG112 ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct brcms_phy *pi,
		       u16 num_samps,
		       u16 num_loops, u16 wait, bool iqcalmode)
{

	FUNC2(pi, 0x6da, 0x8080);

	FUNC1(pi, 0x642, (0x7f << 0), (num_samps - 1) << 0);
	if (num_loops != 0xffff)
		num_loops--;
	FUNC1(pi, 0x640, (0xffff << 0), num_loops << 0);

	FUNC1(pi, 0x641, (0xffff << 0), wait << 0);

	if (iqcalmode) {

		FUNC0(pi, 0x453, (u16) ~(0x1 << 15));
		FUNC2(pi, 0x453, (0x1 << 15));
	} else {
		FUNC5(pi, 0x63f, 1);
		FUNC4(pi, 1);
	}

	FUNC3(pi, RADIO_2064_REG112, 0x6);
}