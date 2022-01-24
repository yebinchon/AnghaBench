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
struct vc_data {unsigned int vc_rows; unsigned int vc_size_row; unsigned int vc_cols; int /*<<< orphan*/  vc_video_erase_char; scalar_t__ vc_origin; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {scalar_t__ (* con_scroll ) (struct vc_data*,unsigned int,unsigned int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  SM_UP ; 
 int /*<<< orphan*/  FUNC1 (unsigned short*,unsigned short*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct vc_data*,unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct vc_data *vc, unsigned int t, unsigned int b, int nr)
{
	unsigned short *d, *s;

	if (t+nr >= b)
		nr = b - t - 1;
	if (b > vc->vc_rows || t >= b || nr < 1)
		return;
	if (FUNC0(vc) && vc->vc_sw->con_scroll(vc, t, b, SM_UP, nr))
		return;
	d = (unsigned short *)(vc->vc_origin + vc->vc_size_row * t);
	s = (unsigned short *)(vc->vc_origin + vc->vc_size_row * (t + nr));
	FUNC1(d, s, (b - t - nr) * vc->vc_size_row);
	FUNC2(d + (b - t - nr) * vc->vc_cols, vc->vc_video_erase_char,
		    vc->vc_size_row * nr);
}