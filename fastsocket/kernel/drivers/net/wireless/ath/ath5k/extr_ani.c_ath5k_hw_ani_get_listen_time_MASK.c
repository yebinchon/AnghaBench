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
struct ath_common {int /*<<< orphan*/  cc_lock; int /*<<< orphan*/  cc_ani; } ;
struct ath5k_hw {int dummy; } ;
struct ath5k_ani_state {int /*<<< orphan*/  last_cc; } ;

/* Variables and functions */
 struct ath_common* FUNC0 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*) ; 
 int FUNC2 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct ath5k_hw *ah, struct ath5k_ani_state *as)
{
	struct ath_common *common = FUNC0(ah);
	int listen;

	FUNC4(&common->cc_lock);

	FUNC1(common);
	FUNC3(&as->last_cc, &common->cc_ani, sizeof(as->last_cc));

	/* clears common->cc_ani */
	listen = FUNC2(common);

	FUNC5(&common->cc_lock);

	return listen;
}