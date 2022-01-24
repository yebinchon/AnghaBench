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
typedef  size_t u32 ;
struct emac_txch {int teardown_pending; } ;
struct emac_priv {struct emac_txch** txch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  EMAC_TXINTMASKCLEAR ; 
 int /*<<< orphan*/  EMAC_TXTEARDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct emac_priv*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct emac_priv *priv, u32 ch)
{
	struct emac_txch *txch = priv->txch[ch];

	if (txch) {
		txch->teardown_pending = 1;
		FUNC2(EMAC_TXTEARDOWN, 0);
		FUNC1(priv, ch);
		txch->teardown_pending = 0;
		FUNC2(EMAC_TXINTMASKCLEAR, FUNC0(ch));
	}
}