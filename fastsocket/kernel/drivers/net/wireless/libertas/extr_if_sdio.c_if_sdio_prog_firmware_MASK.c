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
typedef  scalar_t__ u16 ;
struct if_sdio_card {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  IF_SDIO_BLOCK_SIZE ; 
 scalar_t__ IF_SDIO_FIRMWARE_OK ; 
 int /*<<< orphan*/  LBS_DEB_SDIO ; 
 int FUNC0 (struct if_sdio_card*) ; 
 int FUNC1 (struct if_sdio_card*) ; 
 scalar_t__ FUNC2 (struct if_sdio_card*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct if_sdio_card *card)
{
	int ret;
	u16 scratch;

	FUNC3(LBS_DEB_SDIO);

	FUNC6(card->func);
	scratch = FUNC2(card, &ret);
	FUNC7(card->func);

	if (ret)
		goto out;

	FUNC5("firmware status = %#x\n", scratch);

	if (scratch == IF_SDIO_FIRMWARE_OK) {
		FUNC5("firmware already loaded\n");
		goto success;
	}

	ret = FUNC0(card);
	if (ret)
		goto out;

	ret = FUNC1(card);
	if (ret)
		goto out;

success:
	FUNC6(card->func);
	FUNC8(card->func, IF_SDIO_BLOCK_SIZE);
	FUNC7(card->func);
	ret = 0;

out:
	FUNC4(LBS_DEB_SDIO, "ret %d", ret);

	return ret;
}