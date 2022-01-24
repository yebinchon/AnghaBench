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
struct bfi_itn_create_req_s {int /*<<< orphan*/  mh; scalar_t__ msg_no; int /*<<< orphan*/  seq_rec; int /*<<< orphan*/  class; int /*<<< orphan*/  fw_handle; } ;
struct bfa_itnim_s {int /*<<< orphan*/  reqq; int /*<<< orphan*/  bfa; scalar_t__ msg_no; int /*<<< orphan*/  seq_rec; TYPE_1__* rport; int /*<<< orphan*/  reqq_wait; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  fw_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  BFI_ITN_H2I_CREATE_REQ ; 
 int /*<<< orphan*/  BFI_MC_ITN ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfi_itn_create_req_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_create ; 

__attribute__((used)) static bfa_boolean_t
FUNC6(struct bfa_itnim_s *itnim)
{
	struct bfi_itn_create_req_s *m;

	itnim->msg_no++;

	/*
	 * check for room in queue to send request now
	 */
	m = FUNC1(itnim->bfa, itnim->reqq);
	if (!m) {
		FUNC3(itnim->bfa, itnim->reqq, &itnim->reqq_wait);
		return BFA_FALSE;
	}

	FUNC5(m->mh, BFI_MC_ITN, BFI_ITN_H2I_CREATE_REQ,
			FUNC0(itnim->bfa));
	m->fw_handle = itnim->rport->fw_handle;
	m->class = FC_CLASS_3;
	m->seq_rec = itnim->seq_rec;
	m->msg_no = itnim->msg_no;
	FUNC4(itnim, fw_create);

	/*
	 * queue I/O message to firmware
	 */
	FUNC2(itnim->bfa, itnim->reqq, m->mh);
	return BFA_TRUE;
}