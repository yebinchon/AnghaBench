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
typedef  int /*<<< orphan*/  u8 ;
struct sdio_func {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btmrvl_sdio_card {struct btmrvl_private* priv; } ;
struct TYPE_2__ {struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct btmrvl_private*) ; 
 scalar_t__ FUNC3 (struct btmrvl_private*,int /*<<< orphan*/ *) ; 
 struct btmrvl_sdio_card* FUNC4 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC5(struct sdio_func *func)
{
	struct btmrvl_private *priv;
	struct hci_dev *hcidev;
	struct btmrvl_sdio_card *card;
	u8 ireg = 0;

	card = FUNC4(func);
	if (card && card->priv) {
		priv = card->priv;
		hcidev = priv->btmrvl_dev.hcidev;

		if (FUNC3(priv, &ireg))
			FUNC1("reading HOST_INT_STATUS_REG failed");
		else
			FUNC0("HOST_INT_STATUS_REG %#x", ireg);

		FUNC2(priv);
	}
}