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
typedef  int /*<<< orphan*/  u16 ;
struct x86_emulate_ops {int dummy; } ;
struct x86_emulate_ctxt {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct x86_emulate_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct x86_emulate_ctxt*,struct x86_emulate_ops*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct x86_emulate_ctxt *ctxt,
				 struct x86_emulate_ops *ops,
				 u16 port, u16 len)
{
	if (FUNC0(ctxt))
		if (!FUNC1(ctxt, ops, port, len))
			return false;
	return true;
}