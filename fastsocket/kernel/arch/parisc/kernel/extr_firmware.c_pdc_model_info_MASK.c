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
struct pdc_model {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDC_MODEL ; 
 int /*<<< orphan*/  PDC_MODEL_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pdc_model*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pdc_lock ; 
 int /*<<< orphan*/  pdc_result ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct pdc_model *model) 
{
	int retval;
	unsigned long flags;

	FUNC4(&pdc_lock, flags);
	retval = FUNC2(PDC_MODEL, PDC_MODEL_INFO, FUNC0(pdc_result), 0);
	FUNC1(pdc_result);
	FUNC3(model, pdc_result, sizeof(*model));
	FUNC5(&pdc_lock, flags);

	return retval;
}