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
struct tg3_napi {int last_tag; int coal_now; int /*<<< orphan*/  int_mbox; struct tg3* tp; } ;
struct tg3 {int coalesce_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTCC_MODE ; 
 int HOSTCC_MODE_ENABLE ; 
 int /*<<< orphan*/  TAGGED_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tg3_napi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct tg3_napi *tnapi)
{
	struct tg3 *tp = tnapi->tp;

	FUNC4(tnapi->int_mbox, tnapi->last_tag << 24);
	FUNC0();

	/* When doing tagged status, this work check is unnecessary.
	 * The last_tag we write above tells the chip which piece of
	 * work we've completed.
	 */
	if (!FUNC1(tp, TAGGED_STATUS) && FUNC2(tnapi))
		FUNC3(HOSTCC_MODE, tp->coalesce_mode |
		     HOSTCC_MODE_ENABLE | tnapi->coal_now);
}