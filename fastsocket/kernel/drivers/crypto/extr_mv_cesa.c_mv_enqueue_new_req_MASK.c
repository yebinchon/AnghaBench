#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct req_progress {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  dst; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst_sg_it; int /*<<< orphan*/  src_sg_it; } ;
struct TYPE_4__ {TYPE_1__ p; struct ablkcipher_request* cur_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  SG_MITER_FROM_SG ; 
 int /*<<< orphan*/  SG_MITER_TO_SG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* cpg ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ablkcipher_request *req)
{
	int num_sgs;

	cpg->cur_req = req;
	FUNC1(&cpg->p, 0, sizeof(struct req_progress));

	num_sgs = FUNC0(req->src, req->nbytes);
	FUNC3(&cpg->p.src_sg_it, req->src, num_sgs, SG_MITER_FROM_SG);

	num_sgs = FUNC0(req->dst, req->nbytes);
	FUNC3(&cpg->p.dst_sg_it, req->dst, num_sgs, SG_MITER_TO_SG);
	FUNC2(1);
}