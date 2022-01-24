#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ablkcipher_request {int dummy; } ;
struct TYPE_5__ {void* addr; scalar_t__ length; } ;
struct TYPE_4__ {scalar_t__ crypt_len; scalar_t__ src_start; scalar_t__ sg_src_left; TYPE_2__ src_sg_it; } ;
struct TYPE_6__ {TYPE_1__ p; scalar_t__ sram; int /*<<< orphan*/  max_req_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SRAM_DATA_IN_START ; 
 TYPE_3__* cpg ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct ablkcipher_request *req)
{
	int ret;
	void *buf;

	if (!cpg->p.sg_src_left) {
		ret = FUNC3(&cpg->p.src_sg_it);
		FUNC0(!ret);
		cpg->p.sg_src_left = cpg->p.src_sg_it.length;
		cpg->p.src_start = 0;
	}

	cpg->p.crypt_len = FUNC2(cpg->p.sg_src_left, cpg->max_req_size);

	buf = cpg->p.src_sg_it.addr;
	buf += cpg->p.src_start;

	FUNC1(cpg->sram + SRAM_DATA_IN_START, buf, cpg->p.crypt_len);

	cpg->p.sg_src_left -= cpg->p.crypt_len;
	cpg->p.src_start += cpg->p.crypt_len;
}