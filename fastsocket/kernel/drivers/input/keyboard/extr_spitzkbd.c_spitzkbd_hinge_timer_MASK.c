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
struct spitzkbd {int /*<<< orphan*/  htimer; int /*<<< orphan*/  lock; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HINGE_SCAN_INTERVAL ; 
 scalar_t__ HINGE_STABLE_COUNT ; 
 int /*<<< orphan*/  SPITZ_GPIO_AK_INT ; 
 int /*<<< orphan*/  SPITZ_GPIO_SWA ; 
 int /*<<< orphan*/  SPITZ_GPIO_SWB ; 
 int /*<<< orphan*/  SW_HEADPHONE_INSERT ; 
 int /*<<< orphan*/  SW_LID ; 
 int /*<<< orphan*/  SW_TABLET_MODE ; 
 scalar_t__ hinge_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long sharpsl_hinge_state ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	struct spitzkbd *spitzkbd_data = (struct spitzkbd *) data;
	unsigned long state;
	unsigned long flags;

	state = FUNC1(SPITZ_GPIO_SWA) & (FUNC0(SPITZ_GPIO_SWA)|FUNC0(SPITZ_GPIO_SWB));
	state |= (FUNC1(SPITZ_GPIO_AK_INT) & FUNC0(SPITZ_GPIO_AK_INT));
	if (state != sharpsl_hinge_state) {
		hinge_count = 0;
		sharpsl_hinge_state = state;
	} else if (hinge_count < HINGE_STABLE_COUNT) {
		hinge_count++;
	}

	if (hinge_count >= HINGE_STABLE_COUNT) {
		FUNC6(&spitzkbd_data->lock, flags);

		FUNC2(spitzkbd_data->input, SW_LID, ((FUNC1(SPITZ_GPIO_SWA) & FUNC0(SPITZ_GPIO_SWA)) != 0));
		FUNC2(spitzkbd_data->input, SW_TABLET_MODE, ((FUNC1(SPITZ_GPIO_SWB) & FUNC0(SPITZ_GPIO_SWB)) != 0));
		FUNC2(spitzkbd_data->input, SW_HEADPHONE_INSERT, ((FUNC1(SPITZ_GPIO_AK_INT) & FUNC0(SPITZ_GPIO_AK_INT)) != 0));
		FUNC3(spitzkbd_data->input);

		FUNC7(&spitzkbd_data->lock, flags);
	} else {
		FUNC4(&spitzkbd_data->htimer, jiffies + FUNC5(HINGE_SCAN_INTERVAL));
	}
}