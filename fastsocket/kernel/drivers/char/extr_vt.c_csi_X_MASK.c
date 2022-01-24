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
struct vc_data {int vc_cols; int vc_x; scalar_t__ vc_need_wrap; int /*<<< orphan*/  vc_y; TYPE_1__* vc_sw; int /*<<< orphan*/  vc_video_erase_char; scalar_t__ vc_pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* con_clear ) (struct vc_data*,int /*<<< orphan*/ ,int,int,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc, int vpar) /* erase the following vpar positions */
{					  /* not vt100? */
	int count;

	if (!vpar)
		vpar++;
	count = (vpar > vc->vc_cols - vc->vc_x) ? (vc->vc_cols - vc->vc_x) : vpar;

	FUNC1((unsigned short *)vc->vc_pos, vc->vc_video_erase_char, 2 * count);
	if (FUNC0(vc))
		vc->vc_sw->con_clear(vc, vc->vc_y, vc->vc_x, 1, count);
	vc->vc_need_wrap = 0;
}