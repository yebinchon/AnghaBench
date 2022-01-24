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
struct vbi_info {size_t cc_payload_idx; int /*<<< orphan*/ * cc_payload; } ;
struct vbi_cc {int dummy; } ;
struct ivtv {int /*<<< orphan*/  i_flags; struct vbi_info vbi; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IVTV_F_I_UPDATE_CC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vbi_cc const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ivtv *itv, const struct vbi_cc *cc)
{
	struct vbi_info *vi = &itv->vbi;

	if (vi->cc_payload_idx < FUNC0(vi->cc_payload)) {
		FUNC1(&vi->cc_payload[vi->cc_payload_idx], cc,
		       sizeof(struct vbi_cc));
		vi->cc_payload_idx++;
		FUNC2(IVTV_F_I_UPDATE_CC, &itv->i_flags);
	}
}