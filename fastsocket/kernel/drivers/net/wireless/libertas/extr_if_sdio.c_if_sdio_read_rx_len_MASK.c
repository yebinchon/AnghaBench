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
typedef  int u16 ;
struct if_sdio_card {int model; int rx_unit; int /*<<< orphan*/  func; } ;

/* Variables and functions */
#define  IF_SDIO_MODEL_8385 130 
#define  IF_SDIO_MODEL_8686 129 
#define  IF_SDIO_MODEL_8688 128 
 int /*<<< orphan*/  IF_SDIO_RX_LEN ; 
 int FUNC0 (struct if_sdio_card*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u16 FUNC2(struct if_sdio_card *card, int *err)
{
	int ret;
	u16 rx_len;

	switch (card->model) {
	case IF_SDIO_MODEL_8385:
	case IF_SDIO_MODEL_8686:
		rx_len = FUNC0(card, &ret);
		break;
	case IF_SDIO_MODEL_8688:
	default: /* for newer chipsets */
		rx_len = FUNC1(card->func, IF_SDIO_RX_LEN, &ret);
		if (!ret)
			rx_len <<= card->rx_unit;
		else
			rx_len = 0xffff;	/* invalid length */

		break;
	}

	if (err)
		*err = ret;

	return rx_len;
}