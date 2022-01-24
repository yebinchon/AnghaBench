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
typedef  int u32 ;
struct if_sdio_card {scalar_t__ model; int /*<<< orphan*/  priv; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IF_SDIO_EVENT ; 
 scalar_t__ IF_SDIO_MODEL_8385 ; 
 int /*<<< orphan*/  LBS_DEB_SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct if_sdio_card *card,
		u8 *buffer, unsigned size)
{
	int ret;
	u32 event;

	FUNC0(LBS_DEB_SDIO);

	if (card->model == IF_SDIO_MODEL_8385) {
		event = FUNC4(card->func, IF_SDIO_EVENT, &ret);
		if (ret)
			goto out;

		/* right shift 3 bits to get the event id */
		event >>= 3;
	} else {
		if (size < 4) {
			FUNC2("event packet too small (%d bytes)\n",
				(int)size);
			ret = -EINVAL;
			goto out;
		}
		event = buffer[3] << 24;
		event |= buffer[2] << 16;
		event |= buffer[1] << 8;
		event |= buffer[0] << 0;
	}

	FUNC3(card->priv, event & 0xFF);
	ret = 0;

out:
	FUNC1(LBS_DEB_SDIO, "ret %d", ret);

	return ret;
}