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
struct sdio_func {int dummy; } ;
struct if_sdio_card {int /*<<< orphan*/  priv; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int IF_SDIO_H_INT_DNLD ; 
 int /*<<< orphan*/  IF_SDIO_H_INT_STATUS ; 
 int IF_SDIO_H_INT_UPLD ; 
 int /*<<< orphan*/  LBS_DEB_SDIO ; 
 int FUNC0 (struct if_sdio_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct if_sdio_card* FUNC5 (struct sdio_func*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC8(struct sdio_func *func)
{
	int ret;
	struct if_sdio_card *card;
	u8 cause;

	FUNC1(LBS_DEB_SDIO);

	card = FUNC5(func);

	cause = FUNC6(card->func, IF_SDIO_H_INT_STATUS, &ret);
	if (ret)
		goto out;

	FUNC3("interrupt: 0x%X\n", (unsigned)cause);

	FUNC7(card->func, ~cause, IF_SDIO_H_INT_STATUS, &ret);
	if (ret)
		goto out;

	/*
	 * Ignore the define name, this really means the card has
	 * successfully received the command.
	 */
	if (cause & IF_SDIO_H_INT_DNLD)
		FUNC4(card->priv);


	if (cause & IF_SDIO_H_INT_UPLD) {
		ret = FUNC0(card);
		if (ret)
			goto out;
	}

	ret = 0;

out:
	FUNC2(LBS_DEB_SDIO, "ret %d", ret);
}