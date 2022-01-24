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
struct decode_cache {int modrm_reg; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct x86_emulate_ctxt {int /*<<< orphan*/  eflags; struct decode_cache decode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct x86_emulate_ctxt *ctxt)
{
	struct decode_cache *c = &ctxt->decode;
	switch (c->modrm_reg) {
	case 0:	/* rol */
		FUNC0("rol", c->src, c->dst, ctxt->eflags);
		break;
	case 1:	/* ror */
		FUNC0("ror", c->src, c->dst, ctxt->eflags);
		break;
	case 2:	/* rcl */
		FUNC0("rcl", c->src, c->dst, ctxt->eflags);
		break;
	case 3:	/* rcr */
		FUNC0("rcr", c->src, c->dst, ctxt->eflags);
		break;
	case 4:	/* sal/shl */
	case 6:	/* sal/shl */
		FUNC0("sal", c->src, c->dst, ctxt->eflags);
		break;
	case 5:	/* shr */
		FUNC0("shr", c->src, c->dst, ctxt->eflags);
		break;
	case 7:	/* sar */
		FUNC0("sar", c->src, c->dst, ctxt->eflags);
		break;
	}
}