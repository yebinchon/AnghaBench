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
struct btmrvl_sdio_card {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FIRMWARE_READY ; 
 scalar_t__ FUNC0 (struct btmrvl_sdio_card*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct btmrvl_sdio_card *card,
								int pollnum)
{
	int ret = -ETIMEDOUT;
	u16 firmwarestat;
	unsigned int tries;

	 /* Wait for firmware to become ready */
	for (tries = 0; tries < pollnum; tries++) {
		if (FUNC0(card, &firmwarestat) < 0)
			continue;

		if (firmwarestat == FIRMWARE_READY) {
			ret = 0;
			break;
		} else {
			FUNC1(10);
		}
	}

	return ret;
}