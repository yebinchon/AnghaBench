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
typedef  int u16 ;
struct if_sdio_card {int* buffer; int /*<<< orphan*/  ioport; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 unsigned long HZ ; 
 int IF_SDIO_IO_RDY ; 
 int /*<<< orphan*/  IF_SDIO_STATUS ; 
 int /*<<< orphan*/  LBS_DEB_SDIO ; 
#define  MVMS_CMD 130 
#define  MVMS_DAT 129 
#define  MVMS_EVENT 128 
 int FUNC0 (struct if_sdio_card*,int*,int) ; 
 int FUNC1 (struct if_sdio_card*,int*,int) ; 
 int FUNC2 (struct if_sdio_card*,int*,int) ; 
 int FUNC3 (struct if_sdio_card*,int*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct if_sdio_card *card)
{
	int ret;
	u8 status;
	u16 size, type, chunk;
	unsigned long timeout;

	FUNC4(LBS_DEB_SDIO);

	size = FUNC3(card, &ret);
	if (ret)
		goto out;

	if (size < 4) {
		FUNC6("invalid packet size (%d bytes) from firmware\n",
			(int)size);
		ret = -EINVAL;
		goto out;
	}

	timeout = jiffies + HZ;
	while (1) {
		status = FUNC10(card->func, IF_SDIO_STATUS, &ret);
		if (ret)
			goto out;
		if (status & IF_SDIO_IO_RDY)
			break;
		if (FUNC12(jiffies, timeout)) {
			ret = -ETIMEDOUT;
			goto out;
		}
		FUNC8(1);
	}

	/*
	 * The transfer must be in one transaction or the firmware
	 * goes suicidal. There's no way to guarantee that for all
	 * controllers, but we can at least try.
	 */
	chunk = FUNC9(card->func, size);

	ret = FUNC11(card->func, card->buffer, card->ioport, chunk);
	if (ret)
		goto out;

	chunk = card->buffer[0] | (card->buffer[1] << 8);
	type = card->buffer[2] | (card->buffer[3] << 8);

	FUNC6("packet of type %d and size %d bytes\n",
		(int)type, (int)chunk);

	if (chunk > size) {
		FUNC6("packet fragment (%d > %d)\n",
			(int)chunk, (int)size);
		ret = -EINVAL;
		goto out;
	}

	if (chunk < size) {
		FUNC6("packet fragment (%d < %d)\n",
			(int)chunk, (int)size);
	}

	switch (type) {
	case MVMS_CMD:
		ret = FUNC0(card, card->buffer + 4, chunk - 4);
		if (ret)
			goto out;
		break;
	case MVMS_DAT:
		ret = FUNC1(card, card->buffer + 4, chunk - 4);
		if (ret)
			goto out;
		break;
	case MVMS_EVENT:
		ret = FUNC2(card, card->buffer + 4, chunk - 4);
		if (ret)
			goto out;
		break;
	default:
		FUNC6("invalid type (%d) from firmware\n",
				(int)type);
		ret = -EINVAL;
		goto out;
	}

out:
	if (ret)
		FUNC7("problem fetching packet from firmware\n");

	FUNC5(LBS_DEB_SDIO, "ret %d", ret);

	return ret;
}