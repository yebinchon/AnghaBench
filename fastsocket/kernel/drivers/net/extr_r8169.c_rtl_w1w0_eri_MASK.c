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
typedef  int u32 ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp, int addr, u32 mask, u32 p,
			 u32 m, int type)
{
	u32 val;

	val = FUNC0(tp, addr, type);
	FUNC1(tp, addr, mask, (val & ~m) | p, type);
}