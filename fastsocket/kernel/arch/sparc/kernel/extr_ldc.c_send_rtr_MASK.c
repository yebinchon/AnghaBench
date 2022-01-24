#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ldc_packet {scalar_t__ seqid; int /*<<< orphan*/  env; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct ldc_channel {TYPE_1__ cfg; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HS ; 
 int /*<<< orphan*/  LDC_INFO ; 
 int /*<<< orphan*/  LDC_RTR ; 
 struct ldc_packet* FUNC0 (struct ldc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct ldc_channel*,struct ldc_packet*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ldc_channel *lp)
{
	struct ldc_packet *p;
	unsigned long new_tail;

	p = FUNC0(lp, LDC_INFO, LDC_RTR, NULL, 0,
				   &new_tail);
	if (p) {
		p->env = lp->cfg.mode;
		p->seqid = 0;

		FUNC1(HS, "SEND RTR env[0x%x] seqid[0x%x]\n",
		       p->env, p->seqid);

		return FUNC2(lp, p, new_tail);
	}
	return -EBUSY;
}