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
struct btmrvl_sdio_card {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int MAX_POLL_TRIES ; 
 scalar_t__ FUNC2 (struct btmrvl_sdio_card*) ; 
 int FUNC3 (struct btmrvl_sdio_card*) ; 
 scalar_t__ FUNC4 (struct btmrvl_sdio_card*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct btmrvl_sdio_card *card)
{
	int ret = 0;

	if (!card || !card->func) {
		FUNC1("card or function is NULL!");
		return -EINVAL;
	}
	FUNC5(card->func);

	if (!FUNC4(card, 1)) {
		FUNC0("Firmware already downloaded!");
		goto done;
	}

	ret = FUNC3(card);
	if (ret) {
		FUNC1("Failed to download helper!");
		ret = -EIO;
		goto done;
	}

	if (FUNC2(card)) {
		FUNC1("Failed to download firmware!");
		ret = -EIO;
		goto done;
	}

	if (FUNC4(card, MAX_POLL_TRIES)) {
		FUNC1("FW failed to be active in time!");
		ret = -ETIMEDOUT;
		goto done;
	}

done:
	FUNC6(card->func);

	return ret;
}