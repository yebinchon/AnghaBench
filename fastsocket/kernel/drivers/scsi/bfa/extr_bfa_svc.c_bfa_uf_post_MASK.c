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
struct bfi_uf_buf_post_s {int /*<<< orphan*/  mh; } ;
struct bfa_uf_s {size_t uf_tag; int /*<<< orphan*/  qe; } ;
struct bfa_uf_mod_s {int /*<<< orphan*/  uf_posted_q; int /*<<< orphan*/  bfa; int /*<<< orphan*/ * uf_buf_posts; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_REQQ_FCXP ; 
 int /*<<< orphan*/  BFA_STATUS_FAILED ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 struct bfi_uf_buf_post_s* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfi_uf_buf_post_s*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bfa_status_t
FUNC5(struct bfa_uf_mod_s *ufm, struct bfa_uf_s *uf)
{
	struct bfi_uf_buf_post_s *uf_post_msg;

	uf_post_msg = FUNC0(ufm->bfa, BFA_REQQ_FCXP);
	if (!uf_post_msg)
		return BFA_STATUS_FAILED;

	FUNC4(uf_post_msg, &ufm->uf_buf_posts[uf->uf_tag],
		      sizeof(struct bfi_uf_buf_post_s));
	FUNC1(ufm->bfa, BFA_REQQ_FCXP, uf_post_msg->mh);

	FUNC2(ufm->bfa, uf->uf_tag);

	FUNC3(&uf->qe, &ufm->uf_posted_q);
	return BFA_STATUS_OK;
}