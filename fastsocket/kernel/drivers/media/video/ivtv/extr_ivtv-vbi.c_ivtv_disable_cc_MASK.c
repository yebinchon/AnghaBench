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
struct vbi_cc {int /*<<< orphan*/  even; int /*<<< orphan*/  odd; } ;
struct TYPE_2__ {scalar_t__ cc_payload_idx; } ;
struct ivtv {TYPE_1__ vbi; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IVTV_F_I_UPDATE_CC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,int /*<<< orphan*/ ,struct vbi_cc*) ; 

void FUNC2(struct ivtv *itv)
{
	struct vbi_cc cc = { .odd = { 0x80, 0x80 }, .even = { 0x80, 0x80 } };

	FUNC0(IVTV_F_I_UPDATE_CC, &itv->i_flags);
	FUNC1(itv, 0, &cc);
	itv->vbi.cc_payload_idx = 0;
}