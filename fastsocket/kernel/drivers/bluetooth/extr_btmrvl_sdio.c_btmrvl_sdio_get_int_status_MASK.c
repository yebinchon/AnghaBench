#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct btmrvl_sdio_card {int /*<<< orphan*/  func; } ;
struct TYPE_2__ {int tx_dnld_rdy; struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;
typedef  int /*<<< orphan*/  sdio_ireg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DN_LD_HOST_INT_STATUS ; 
 int EIO ; 
 int /*<<< orphan*/  HOST_INTSTATUS_REG ; 
 int UP_LD_HOST_INT_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct btmrvl_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct btmrvl_private *priv, u8 * ireg)
{
	int ret;
	u8 sdio_ireg = 0;
	struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;

	*ireg = 0;

	sdio_ireg = FUNC3(card->func, HOST_INTSTATUS_REG, &ret);
	if (ret) {
		FUNC1("sdio_readb: read int status register failed");
		ret = -EIO;
		goto done;
	}

	if (sdio_ireg != 0) {
		/*
		 * DN_LD_HOST_INT_STATUS and/or UP_LD_HOST_INT_STATUS
		 * Clear the interrupt status register and re-enable the
		 * interrupt.
		 */
		FUNC0("sdio_ireg = 0x%x", sdio_ireg);

		FUNC4(card->func, ~(sdio_ireg) & (DN_LD_HOST_INT_STATUS |
							UP_LD_HOST_INT_STATUS),
			    HOST_INTSTATUS_REG, &ret);
		if (ret) {
			FUNC1("sdio_writeb: clear int status register "
				"failed");
			ret = -EIO;
			goto done;
		}
	}

	if (sdio_ireg & DN_LD_HOST_INT_STATUS) {
		if (priv->btmrvl_dev.tx_dnld_rdy)
			FUNC0("tx_done already received: "
				" int_status=0x%x", sdio_ireg);
		else
			priv->btmrvl_dev.tx_dnld_rdy = true;
	}

	if (sdio_ireg & UP_LD_HOST_INT_STATUS)
		FUNC2(priv);

	*ireg = sdio_ireg;

	ret = 0;

done:
	return ret;
}