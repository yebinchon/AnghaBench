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
struct cxgbi_sock {void* cpl_abort_rpl; void* cpl_abort_req; void* cpl_close; } ;
struct cpl_close_con_req {int dummy; } ;
struct cpl_abort_rpl {int dummy; } ;
struct cpl_abort_req {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*) ; 

__attribute__((used)) static int FUNC2(struct cxgbi_sock *csk)
{
	csk->cpl_close = FUNC0(sizeof(struct cpl_close_con_req), 0,
					GFP_KERNEL);
	if (!csk->cpl_close)
		return -ENOMEM;
	csk->cpl_abort_req = FUNC0(sizeof(struct cpl_abort_req), 0,
					GFP_KERNEL);
	if (!csk->cpl_abort_req)
		goto free_cpl_skbs;

	csk->cpl_abort_rpl = FUNC0(sizeof(struct cpl_abort_rpl), 0,
					GFP_KERNEL);
	if (!csk->cpl_abort_rpl)
		goto free_cpl_skbs;

	return 0;

free_cpl_skbs:
	FUNC1(csk);
	return -ENOMEM;
}