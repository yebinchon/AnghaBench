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
struct mthca_fmr {int dummy; } ;
struct ib_fmr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mthca_fmr*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mthca_fmr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mthca_fmr* FUNC3 (struct ib_fmr*) ; 

__attribute__((used)) static int FUNC4(struct ib_fmr *fmr)
{
	struct mthca_fmr *mfmr = FUNC3(fmr);
	int err;

	err = FUNC1(FUNC2(fmr->device), mfmr);
	if (err)
		return err;

	FUNC0(mfmr);
	return 0;
}