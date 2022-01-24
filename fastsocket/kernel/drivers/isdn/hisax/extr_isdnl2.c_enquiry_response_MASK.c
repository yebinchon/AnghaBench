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
struct TYPE_2__ {int /*<<< orphan*/  flag; } ;
struct PStack {TYPE_1__ l2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_ACK_PEND ; 
 int /*<<< orphan*/  FLG_OWN_BUSY ; 
 int /*<<< orphan*/  RNR ; 
 int /*<<< orphan*/  RR ; 
 int /*<<< orphan*/  RSP ; 
 int /*<<< orphan*/  FUNC0 (struct PStack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct PStack *st)
{
	if (FUNC2(FLG_OWN_BUSY, &st->l2.flag))
		FUNC0(st, RNR, RSP, 1);
	else
		FUNC0(st, RR, RSP, 1);
	FUNC1(FLG_ACK_PEND, &st->l2.flag);
}