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
struct ar9170 {int /*<<< orphan*/  udev; int /*<<< orphan*/  fw_load_wait; } ;

/* Variables and functions */
 int FUNC0 (struct ar9170*) ; 
 int FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*) ; 
 int FUNC5 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC6 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ar9170 *ar)
{
	int err;

	err = FUNC0(ar);
	if (err)
		goto err_freefw;

	err = FUNC5(ar);
	if (err)
		goto err_freefw;

	err = FUNC1(ar);

	FUNC6(ar);
	if (err)
		goto err_unrx;

	FUNC7(&ar->fw_load_wait);
	FUNC8(ar->udev);
	return;

err_unrx:
	FUNC3(ar);

err_freefw:
	FUNC2(ar);
	FUNC4(ar);
}