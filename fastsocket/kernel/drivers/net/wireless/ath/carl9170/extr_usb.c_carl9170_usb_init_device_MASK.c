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
struct ar9170 {int cmd_seq; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 int FUNC1 (struct ar9170*) ; 
 int FUNC2 (struct ar9170*) ; 
 int FUNC3 (struct ar9170*) ; 
 int FUNC4 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC5 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ar9170 *ar)
{
	int err;

	/*
	 * The carl9170 firmware let's the driver know when it's
	 * ready for action. But we have to be prepared to gracefully
	 * handle all spurious [flushed] messages after each (re-)boot.
	 * Thus the command response counter remains disabled until it
	 * can be safely synchronized.
	 */
	ar->cmd_seq = -2;

	err = FUNC4(ar);
	if (err)
		goto err_out;

	err = FUNC1(ar);
	if (err)
		goto err_unrx;

	err = FUNC3(ar);
	if (err)
		goto err_unrx;

	FUNC6(&ar->mutex);
	err = FUNC2(ar);
	FUNC7(&ar->mutex);
	if (err)
		goto err_stop;

	return 0;

err_stop:
	FUNC5(ar);

err_unrx:
	FUNC0(ar);

err_out:
	return err;
}