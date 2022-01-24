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
struct pad_desc {unsigned int pad_ctrl_ofs; int mux_mode; int select_input; int pad_ctrl; scalar_t__ select_input_ofs; scalar_t__ mux_ctrl_ofs; } ;

/* Variables and functions */
 int EBUSY ; 
 int NO_PAD_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 scalar_t__ base ; 
 int /*<<< orphan*/  iomux_v3_pad_alloc_map ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC2(struct pad_desc *pad)
{
	unsigned int pad_ofs = pad->pad_ctrl_ofs;

	if (FUNC1(pad_ofs >> 2, iomux_v3_pad_alloc_map))
		return -EBUSY;
	if (pad->mux_ctrl_ofs)
		FUNC0(pad->mux_mode, base + pad->mux_ctrl_ofs);

	if (pad->select_input_ofs)
		FUNC0(pad->select_input,
				base + pad->select_input_ofs);

	if (!(pad->pad_ctrl & NO_PAD_CTRL) && pad->pad_ctrl_ofs)
		FUNC0(pad->pad_ctrl, base + pad->pad_ctrl_ofs);
	return 0;
}