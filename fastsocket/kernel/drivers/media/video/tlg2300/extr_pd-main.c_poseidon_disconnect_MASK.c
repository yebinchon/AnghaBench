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
struct usb_interface {int dummy; } ;
struct poseidon {int /*<<< orphan*/  kref; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  dvb_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  POSEIDON_STATE_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct poseidon* FUNC1 (struct usb_interface*) ; 
 scalar_t__ FUNC2 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC8 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC9 (struct poseidon*) ; 
 int /*<<< orphan*/  poseidon_delete ; 
 int /*<<< orphan*/  FUNC10 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC11 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct usb_interface *interface)
{
	struct poseidon *pd = FUNC1(interface);

	if (!pd)
		return;
	FUNC4(pd);
	if (FUNC2(pd))
		return;

	FUNC5(&pd->lock);
	pd->state |= POSEIDON_STATE_DISCONNECT;
	FUNC6(&pd->lock);

	/* stop urb transferring */
	FUNC11(pd);
	FUNC0(&pd->dvb_data);

	/*unregister v4l2 device */
	FUNC13(&pd->v4l2_dev);

	FUNC7(pd);
	FUNC10(pd);

	FUNC9(pd);
	FUNC8(pd);

	FUNC12(interface, NULL);
	FUNC3(&pd->kref, poseidon_delete);
}