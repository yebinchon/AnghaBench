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
struct ath9k_tx_queue_info {int dummy; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; } ;
typedef  int /*<<< orphan*/  qi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH9K_TX_QUEUE_CAB ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath9k_tx_queue_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_tx_queue_info*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ath9k_htc_priv *priv)
{
	struct ath9k_tx_queue_info qi;

	FUNC2(&qi, 0, sizeof(qi));
	FUNC0(0);

	return FUNC1(priv->ah, ATH9K_TX_QUEUE_CAB, &qi);
}