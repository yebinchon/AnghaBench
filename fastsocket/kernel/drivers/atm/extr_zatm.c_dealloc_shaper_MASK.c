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
struct zatm_dev {int ubr; int free_shapers; int /*<<< orphan*/  lock; scalar_t__ ubr_ref_cnt; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 struct zatm_dev* FUNC0 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int uPD98401_PS_E ; 
 int FUNC4 (struct zatm_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zatm_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct atm_dev *dev,int shaper)
{
	struct zatm_dev *zatm_dev;
	unsigned long flags;

	zatm_dev = FUNC0(dev);
	if (shaper == zatm_dev->ubr) {
		if (--zatm_dev->ubr_ref_cnt) return;
		zatm_dev->ubr = -1;
	}
	FUNC1(&zatm_dev->lock, flags);
	FUNC5(zatm_dev,FUNC4(zatm_dev,FUNC3(shaper)) & ~uPD98401_PS_E,
	    FUNC3(shaper));
	FUNC2(&zatm_dev->lock, flags);
	zatm_dev->free_shapers |= 1 << shaper;
}