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
struct TYPE_4__ {void* ptr; int /*<<< orphan*/  val; int /*<<< orphan*/  bytes; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
struct decode_cache {int /*<<< orphan*/ * regs; TYPE_2__ dst; int /*<<< orphan*/  op_bytes; TYPE_1__ src; } ;
struct x86_emulate_ctxt {struct decode_cache decode; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_MEM ; 
 size_t VCPU_REGS_RSP ; 
 scalar_t__ FUNC0 (struct decode_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct decode_cache*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct x86_emulate_ctxt*) ; 

__attribute__((used)) static inline void FUNC3(struct x86_emulate_ctxt *ctxt)
{
	struct decode_cache *c = &ctxt->decode;

	c->dst.type  = OP_MEM;
	c->dst.bytes = c->op_bytes;
	c->dst.val = c->src.val;
	FUNC1(c, &c->regs[VCPU_REGS_RSP], -c->op_bytes);
	c->dst.ptr = (void *) FUNC0(c, FUNC2(ctxt),
					       c->regs[VCPU_REGS_RSP]);
}