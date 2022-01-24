#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct bnx2fc_hba {TYPE_1__ destroy_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  destroy_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2FC_FLAG_DESTROY_CMPL ; 
 int /*<<< orphan*/  BNX2FC_FLAG_FW_INIT_DONE ; 
 scalar_t__ BNX2FC_FW_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  bnx2fc_destroy_timer ; 
 scalar_t__ FUNC1 (struct bnx2fc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2fc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct bnx2fc_hba *hba)
{
	if (FUNC8(BNX2FC_FLAG_FW_INIT_DONE, &hba->flags)) {
		if (FUNC1(hba) == 0) {
			FUNC6(&hba->destroy_timer);
			hba->destroy_timer.expires = BNX2FC_FW_TIMEOUT +
								jiffies;
			hba->destroy_timer.function = bnx2fc_destroy_timer;
			hba->destroy_timer.data = (unsigned long)hba;
			FUNC0(&hba->destroy_timer);
			FUNC10(hba->destroy_wait,
					FUNC9(BNX2FC_FLAG_DESTROY_CMPL,
						 &hba->flags));
			FUNC3(BNX2FC_FLAG_DESTROY_CMPL, &hba->flags);
			/* This should never happen */
			if (FUNC7(current))
				FUNC5(current);

			FUNC4(&hba->destroy_timer);
		}
		FUNC2(hba);
	}
}