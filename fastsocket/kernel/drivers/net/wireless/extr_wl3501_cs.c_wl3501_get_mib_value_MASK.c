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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct wl3501_get_req {int /*<<< orphan*/  mib_attrib; int /*<<< orphan*/  sig_id; } ;
struct TYPE_2__ {int mib_status; int /*<<< orphan*/  mib_value; } ;
struct wl3501_card {int /*<<< orphan*/  lock; TYPE_1__ sig_get_confirm; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  sig ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  WL3501_SIG_GET_REQ ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wl3501_card*,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct wl3501_card*) ; 
 scalar_t__ FUNC6 (struct wl3501_card*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wl3501_card*,scalar_t__,struct wl3501_get_req*,int) ; 

__attribute__((used)) static int FUNC8(struct wl3501_card *this, u8 index,
				void *bf, int size)
{
	struct wl3501_get_req sig = {
		.sig_id	    = WL3501_SIG_GET_REQ,
		.mib_attrib = index,
	};
	unsigned long flags;
	int rc = -EIO;

	FUNC1(&this->lock, flags);
	if (FUNC5(this)) {
		u16 ptr = FUNC6(this, sizeof(sig));
		if (ptr) {
			FUNC7(this, ptr, &sig, sizeof(sig));
			FUNC4(this, &ptr);
			this->sig_get_confirm.mib_status = 255;
			FUNC2(&this->lock, flags);
			rc = FUNC3(this->wait,
				this->sig_get_confirm.mib_status != 255);
			if (!rc)
				FUNC0(bf, this->sig_get_confirm.mib_value,
				       size);
			goto out;
		}
	}
	FUNC2(&this->lock, flags);
out:
	return rc;
}