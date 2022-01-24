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
struct vc_map {int dummy; } ;
struct idt77252_dev {int /*<<< orphan*/  tst_lock; int /*<<< orphan*/  tst_timer; int /*<<< orphan*/  tst_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  TST_SWITCH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct idt77252_dev*,struct vc_map*) ; 
 int FUNC1 (struct idt77252_dev*,struct vc_map*,int,unsigned int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct idt77252_dev *card, struct vc_map *vc,
	   int n, unsigned int opc)
{
	unsigned long flags;
	int res;

	FUNC4(&card->tst_lock, flags);

	FUNC0(card, vc);
	res = FUNC1(card, vc, n, opc);

	FUNC3(TST_SWITCH_PENDING, &card->tst_state);
	if (!FUNC6(&card->tst_timer))
		FUNC2(&card->tst_timer, jiffies + 1);

	FUNC5(&card->tst_lock, flags);
	return res;
}