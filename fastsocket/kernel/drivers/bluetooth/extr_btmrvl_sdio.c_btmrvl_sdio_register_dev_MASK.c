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
struct sdio_func {int /*<<< orphan*/  num; } ;
struct btmrvl_sdio_card {int ioport; struct sdio_func* func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  IO_PORT_0_REG ; 
 int /*<<< orphan*/  IO_PORT_1_REG ; 
 int /*<<< orphan*/  IO_PORT_2_REG ; 
 int /*<<< orphan*/  SDIO_BLOCK_SIZE ; 
 int /*<<< orphan*/  btmrvl_sdio_interrupt ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int FUNC3 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*) ; 
 int FUNC6 (struct sdio_func*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int FUNC9 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdio_func*,struct btmrvl_sdio_card*) ; 

__attribute__((used)) static int FUNC11(struct btmrvl_sdio_card *card)
{
	struct sdio_func *func;
	u8 reg;
	int ret = 0;

	if (!card || !card->func) {
		FUNC1("Error: card or function is NULL!");
		ret = -EINVAL;
		goto failed;
	}

	func = card->func;

	FUNC2(func);

	ret = FUNC5(func);
	if (ret) {
		FUNC1("sdio_enable_func() failed: ret=%d", ret);
		ret = -EIO;
		goto release_host;
	}

	ret = FUNC3(func, btmrvl_sdio_interrupt);
	if (ret) {
		FUNC1("sdio_claim_irq failed: ret=%d", ret);
		ret = -EIO;
		goto disable_func;
	}

	ret = FUNC9(card->func, SDIO_BLOCK_SIZE);
	if (ret) {
		FUNC1("cannot set SDIO block size");
		ret = -EIO;
		goto release_irq;
	}

	reg = FUNC6(func, IO_PORT_0_REG, &ret);
	if (ret < 0) {
		ret = -EIO;
		goto release_irq;
	}

	card->ioport = reg;

	reg = FUNC6(func, IO_PORT_1_REG, &ret);
	if (ret < 0) {
		ret = -EIO;
		goto release_irq;
	}

	card->ioport |= (reg << 8);

	reg = FUNC6(func, IO_PORT_2_REG, &ret);
	if (ret < 0) {
		ret = -EIO;
		goto release_irq;
	}

	card->ioport |= (reg << 16);

	FUNC0("SDIO FUNC%d IO port: 0x%x", func->num, card->ioport);

	FUNC10(func, card);

	FUNC7(func);

	return 0;

release_irq:
	FUNC8(func);

disable_func:
	FUNC4(func);

release_host:
	FUNC7(func);

failed:
	return ret;
}