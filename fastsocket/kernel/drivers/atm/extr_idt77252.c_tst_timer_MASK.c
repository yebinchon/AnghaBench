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
typedef  unsigned long u32 ;
struct idt77252_dev {unsigned long* tst; size_t tst_index; unsigned long tst_size; int /*<<< orphan*/  tst_lock; int /*<<< orphan*/  tst_timer; int /*<<< orphan*/  tst_state; TYPE_1__* soft_tst; } ;
struct TYPE_2__ {int tste; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAR_REG_NOW ; 
 unsigned long TSTE_MASK ; 
 unsigned long TSTE_OPC_JMP ; 
 unsigned long TSTE_OPC_NULL ; 
 int TSTE_PUSH_ACTIVE ; 
 int TSTE_PUSH_IDLE ; 
 int /*<<< orphan*/  TST_SWITCH_PENDING ; 
 int /*<<< orphan*/  TST_SWITCH_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct idt77252_dev*,unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC9(unsigned long data)
{
	struct idt77252_dev *card = (struct idt77252_dev *)data;
	unsigned long base, idle, jump;
	unsigned long flags;
	u32 pc;
	int e;

	FUNC4(&card->tst_lock, flags);

	base = card->tst[card->tst_index];
	idle = card->tst[card->tst_index ^ 1];

	if (FUNC7(TST_SWITCH_WAIT, &card->tst_state)) {
		jump = base + card->tst_size - 2;

		pc = FUNC2(SAR_REG_NOW) >> 2;
		if ((pc ^ idle) & ~(card->tst_size - 1)) {
			FUNC1(&card->tst_timer, jiffies + 1);
			goto out;
		}

		FUNC0(TST_SWITCH_WAIT, &card->tst_state);

		card->tst_index ^= 1;
		FUNC8(card, jump, TSTE_OPC_JMP | (base << 2));

		base = card->tst[card->tst_index];
		idle = card->tst[card->tst_index ^ 1];

		for (e = 0; e < card->tst_size - 2; e++) {
			if (card->soft_tst[e].tste & TSTE_PUSH_IDLE) {
				FUNC8(card, idle + e,
					   card->soft_tst[e].tste & TSTE_MASK);
				card->soft_tst[e].tste &= ~(TSTE_PUSH_IDLE);
			}
		}
	}

	if (FUNC6(TST_SWITCH_PENDING, &card->tst_state)) {

		for (e = 0; e < card->tst_size - 2; e++) {
			if (card->soft_tst[e].tste & TSTE_PUSH_ACTIVE) {
				FUNC8(card, idle + e,
					   card->soft_tst[e].tste & TSTE_MASK);
				card->soft_tst[e].tste &= ~(TSTE_PUSH_ACTIVE);
				card->soft_tst[e].tste |= TSTE_PUSH_IDLE;
			}
		}

		jump = base + card->tst_size - 2;

		FUNC8(card, jump, TSTE_OPC_NULL);
		FUNC3(TST_SWITCH_WAIT, &card->tst_state);

		FUNC1(&card->tst_timer, jiffies + 1);
	}

out:
	FUNC5(&card->tst_lock, flags);
}