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
struct rtl8169_private {int dummy; } ;
struct ephy_info {int mask; int bits; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp, const struct ephy_info *e,
			  int len)
{
	u16 w;

	while (len-- > 0) {
		w = (FUNC0(tp, e->offset) & ~e->mask) | e->bits;
		FUNC1(tp, e->offset, w);
		e++;
	}
}