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
struct vc_data {int vc_hi_font_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int,int) ; 

u16 FUNC2(struct vc_data *vc, int offset)
{
	u16 w = FUNC0(FUNC1(vc, offset, 1));
	u16 c = w & 0xff;

	if (w & vc->vc_hi_font_mask)
		c |= 0x100;
	return c;
}