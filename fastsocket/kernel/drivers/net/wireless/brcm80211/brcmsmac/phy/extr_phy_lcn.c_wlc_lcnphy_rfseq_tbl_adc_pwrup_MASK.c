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

__attribute__((used)) static u16 FUNC1(struct brcms_phy *pi)
{
	u16 N1, N2, N3, N4, N5, N6, N;
	N1 = ((FUNC0(pi, 0x4a5) & (0xff << 0))
	      >> 0);
	N2 = 1 << ((FUNC0(pi, 0x4a5) & (0x7 << 12))
		   >> 12);
	N3 = ((FUNC0(pi, 0x40d) & (0xff << 0))
	      >> 0);
	N4 = 1 << ((FUNC0(pi, 0x40d) & (0x7 << 8))
		   >> 8);
	N5 = ((FUNC0(pi, 0x4a2) & (0xff << 0))
	      >> 0);
	N6 = 1 << ((FUNC0(pi, 0x4a2) & (0x7 << 8))
		   >> 8);
	N = 2 * (N1 + N2 + N3 + N4 + 2 * (N5 + N6)) + 80;
	if (N < 1600)
		N = 1600;
	return N;
}