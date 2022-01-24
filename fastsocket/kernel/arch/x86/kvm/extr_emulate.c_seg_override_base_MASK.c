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
struct x86_emulate_ctxt {int dummy; } ;
struct decode_cache {int /*<<< orphan*/  seg_override; int /*<<< orphan*/  has_seg_override; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct x86_emulate_ctxt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC1(struct x86_emulate_ctxt *ctxt,
				       struct decode_cache *c)
{
	if (!c->has_seg_override)
		return 0;

	return FUNC0(ctxt, c->seg_override);
}