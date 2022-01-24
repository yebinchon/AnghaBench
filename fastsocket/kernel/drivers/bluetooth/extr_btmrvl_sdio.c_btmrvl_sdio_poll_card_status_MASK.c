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
typedef  int u8 ;
struct btmrvl_sdio_card {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  CARD_STATUS_REG ; 
 int ETIMEDOUT ; 
 int MAX_POLL_TRIES ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct btmrvl_sdio_card *card, u8 bits)
{
	unsigned int tries;
	u8 status;
	int ret;

	for (tries = 0; tries < MAX_POLL_TRIES * 1000; tries++) {
		status = FUNC1(card->func, CARD_STATUS_REG, &ret);
		if (ret)
			goto failed;
		if ((status & bits) == bits)
			return ret;

		FUNC2(1);
	}

	ret = -ETIMEDOUT;

failed:
	FUNC0("FAILED! ret=%d", ret);

	return ret;
}