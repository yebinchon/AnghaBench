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
struct bfi_msgq_i2h_cmdq_copy_req {int /*<<< orphan*/  len; int /*<<< orphan*/  offset; } ;
struct bfi_mbmsg {int dummy; } ;
struct bfa_msgq_cmdq {void* bytes_to_copy; void* offset; scalar_t__ token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_msgq_cmdq*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bfa_msgq_cmdq *cmdq, struct bfi_mbmsg *mb)
{
	struct bfi_msgq_i2h_cmdq_copy_req *req =
		(struct bfi_msgq_i2h_cmdq_copy_req *)mb;

	cmdq->token = 0;
	cmdq->offset = FUNC1(req->offset);
	cmdq->bytes_to_copy = FUNC1(req->len);
	FUNC0(cmdq);
}