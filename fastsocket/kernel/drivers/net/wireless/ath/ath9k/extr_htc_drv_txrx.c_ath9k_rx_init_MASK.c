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
struct ath9k_htc_rxbuf {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  rxbuf; int /*<<< orphan*/  rxbuflock; } ;
struct ath9k_htc_priv {TYPE_1__ rx; } ;

/* Variables and functions */
 int ATH9K_HTC_RXBUF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 struct ath9k_htc_rxbuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ath9k_htc_priv *priv)
{
	int i = 0;

	FUNC0(&priv->rx.rxbuf);
	FUNC4(&priv->rx.rxbuflock);

	for (i = 0; i < ATH9K_HTC_RXBUF; i++) {
		struct ath9k_htc_rxbuf *rxbuf =
			FUNC2(sizeof(struct ath9k_htc_rxbuf), GFP_KERNEL);
		if (rxbuf == NULL)
			goto err;

		FUNC3(&rxbuf->list, &priv->rx.rxbuf);
	}

	return 0;

err:
	FUNC1(priv);
	return -ENOMEM;
}