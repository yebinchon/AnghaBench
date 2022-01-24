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
struct hso_serial {TYPE_1__* shared_int; int /*<<< orphan*/  minor; } ;
struct hso_device {TYPE_1__* shared_int; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ ref_count; int /*<<< orphan*/  shared_int_lock; } ;

/* Variables and functions */
 struct hso_serial* FUNC0 (struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC3 (struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC4 (struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hso_device *hso_dev)
{
	struct hso_serial *serial = FUNC0(hso_dev);

	if (!serial)
		return;
	FUNC7(serial->minor, NULL);

	FUNC3(serial);

	if (serial->shared_int) {
		FUNC5(&serial->shared_int->shared_int_lock);
		if (--serial->shared_int->ref_count == 0)
			FUNC1(serial->shared_int);
		else
			FUNC6(&serial->shared_int->shared_int_lock);
	}
	FUNC2(serial);
	FUNC4(serial);
	FUNC4(hso_dev);
}