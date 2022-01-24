#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct if_sdio_card {TYPE_1__* func; int /*<<< orphan*/  ioport; int /*<<< orphan*/  firmware; } ;
struct firmware {int* data; size_t size; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HZ ; 
 int IF_SDIO_DL_RDY ; 
 scalar_t__ IF_SDIO_FIRMWARE_OK ; 
 int IF_SDIO_IO_RDY ; 
 scalar_t__ IF_SDIO_RD_BASE ; 
 scalar_t__ IF_SDIO_STATUS ; 
 int /*<<< orphan*/  LBS_DEB_SDIO ; 
 scalar_t__ FUNC0 (struct if_sdio_card*,int*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int const*,scalar_t__) ; 
 scalar_t__ FUNC9 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct firmware const*) ; 
 int FUNC12 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*,int) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC20(struct if_sdio_card *card)
{
	int ret;
	u8 status;
	const struct firmware *fw;
	unsigned long timeout;
	u8 *chunk_buffer;
	u32 chunk_size;
	const u8 *firmware;
	size_t size, req_size;

	FUNC3(LBS_DEB_SDIO);

	ret = FUNC12(&fw, card->firmware, &card->func->dev);
	if (ret) {
		FUNC6("can't load firmware\n");
		goto out;
	}

	chunk_buffer = FUNC2(512, GFP_KERNEL);
	if (!chunk_buffer) {
		ret = -ENOMEM;
		goto release_fw;
	}

	FUNC14(card->func);

	ret = FUNC17(card->func, 32);
	if (ret)
		goto release;

	firmware = fw->data;
	size = fw->size;

	while (size) {
		timeout = jiffies + HZ;
		while (1) {
			status = FUNC15(card->func, IF_SDIO_STATUS, &ret);
			if (ret)
				goto release;
			if ((status & IF_SDIO_IO_RDY) &&
					(status & IF_SDIO_DL_RDY))
				break;
			if (FUNC19(jiffies, timeout)) {
				ret = -ETIMEDOUT;
				goto release;
			}
			FUNC7(1);
		}

		req_size = FUNC15(card->func, IF_SDIO_RD_BASE, &ret);
		if (ret)
			goto release;

		req_size |= FUNC15(card->func, IF_SDIO_RD_BASE + 1, &ret) << 8;
		if (ret)
			goto release;
/*
		lbs_deb_sdio("firmware wants %d bytes\n", (int)req_size);
*/
		if (req_size == 0) {
			FUNC5("firmware helper gave up early\n");
			ret = -EIO;
			goto release;
		}

		if (req_size & 0x01) {
			FUNC5("firmware helper signalled error\n");
			ret = -EIO;
			goto release;
		}

		if (req_size > size)
			req_size = size;

		while (req_size) {
			chunk_size = FUNC9(req_size, (size_t)512);

			FUNC8(chunk_buffer, firmware, chunk_size);
/*
			lbs_deb_sdio("sending %d bytes (%d bytes) chunk\n",
				chunk_size, (chunk_size + 31) / 32 * 32);
*/
			ret = FUNC18(card->func, card->ioport,
				chunk_buffer, FUNC13(chunk_size, 32));
			if (ret)
				goto release;

			firmware += chunk_size;
			size -= chunk_size;
			req_size -= chunk_size;
		}
	}

	ret = 0;

	FUNC5("waiting for firmware to boot...\n");

	/* wait for the firmware to boot */
	timeout = jiffies + HZ;
	while (1) {
		u16 scratch;

		scratch = FUNC0(card, &ret);
		if (ret)
			goto release;

		if (scratch == IF_SDIO_FIRMWARE_OK)
			break;

		if (FUNC19(jiffies, timeout)) {
			ret = -ETIMEDOUT;
			goto release;
		}

		FUNC10(10);
	}

	ret = 0;

release:
	FUNC16(card->func);
	FUNC1(chunk_buffer);
release_fw:
	FUNC11(fw);

out:
	if (ret)
		FUNC6("failed to load firmware\n");

	FUNC4(LBS_DEB_SDIO, "ret %d", ret);

	return ret;
}