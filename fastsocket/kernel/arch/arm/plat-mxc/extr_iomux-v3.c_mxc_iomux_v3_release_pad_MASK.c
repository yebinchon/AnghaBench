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
struct pad_desc {unsigned int pad_ctrl_ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iomux_v3_pad_alloc_map ; 

void FUNC1(struct pad_desc *pad)
{
	unsigned int pad_ofs = pad->pad_ctrl_ofs;

	FUNC0(pad_ofs >> 2, iomux_v3_pad_alloc_map);
}