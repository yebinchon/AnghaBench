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
struct x86_emulate_ops {int (* read_emulated ) (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ;} ;
struct decode_cache {int /*<<< orphan*/ * regs; } ;
struct x86_emulate_ctxt {int /*<<< orphan*/  vcpu; struct decode_cache decode; } ;

/* Variables and functions */
 size_t VCPU_REGS_RSP ; 
 int /*<<< orphan*/  FUNC0 (struct decode_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct decode_cache*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct x86_emulate_ctxt*) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct x86_emulate_ctxt *ctxt,
		       struct x86_emulate_ops *ops,
		       void *dest, int len)
{
	struct decode_cache *c = &ctxt->decode;
	int rc;

	rc = ops->read_emulated(FUNC0(c, FUNC2(ctxt),
						 c->regs[VCPU_REGS_RSP]),
				dest, len, ctxt->vcpu);
	if (rc != 0)
		return rc;

	FUNC1(c, &c->regs[VCPU_REGS_RSP], len);
	return rc;
}