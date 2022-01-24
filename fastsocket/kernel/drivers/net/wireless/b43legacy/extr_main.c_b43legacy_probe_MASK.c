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
struct ssb_device_id {int dummy; } ;
struct ssb_device {int dummy; } ;
struct b43legacy_wl {int /*<<< orphan*/  firmware_load; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssb_device*,struct b43legacy_wl*) ; 
 int /*<<< orphan*/  b43legacy_request_firmware ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_device*,struct b43legacy_wl*) ; 
 int FUNC4 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct b43legacy_wl* FUNC6 (struct ssb_device*) ; 

__attribute__((used)) static int FUNC7(struct ssb_device *dev,
			 const struct ssb_device_id *id)
{
	struct b43legacy_wl *wl;
	int err;
	int first = 0;

	wl = FUNC6(dev);
	if (!wl) {
		/* Probing the first core - setup common struct b43legacy_wl */
		first = 1;
		err = FUNC4(dev);
		if (err)
			goto out;
		wl = FUNC6(dev);
		FUNC0(!wl);
	}
	err = FUNC2(dev, wl);
	if (err)
		goto err_wireless_exit;

	/* setup and start work to load firmware */
	FUNC1(&wl->firmware_load, b43legacy_request_firmware);
	FUNC5(&wl->firmware_load);

out:
	return err;

err_wireless_exit:
	if (first)
		FUNC3(dev, wl);
	return err;
}