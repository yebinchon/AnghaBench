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
struct list_head {int dummy; } ;
struct bna_tx_mod {int /*<<< orphan*/  tx_free_q; } ;
struct bna_tx {int type; int /*<<< orphan*/  qe; } ;
typedef  enum bna_tx_type { ____Placeholder_bna_tx_type } bna_tx_type ;

/* Variables and functions */
 int BNA_TX_T_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bna_tx *
FUNC4(struct bna_tx_mod *tx_mod, enum bna_tx_type type)
{
	struct list_head	*qe = NULL;
	struct bna_tx *tx = NULL;

	if (FUNC3(&tx_mod->tx_free_q))
		return NULL;
	if (type == BNA_TX_T_REGULAR) {
		FUNC0(&tx_mod->tx_free_q, &qe);
	} else {
		FUNC1(&tx_mod->tx_free_q, &qe);
	}
	tx = (struct bna_tx *)qe;
	FUNC2(&tx->qe);
	tx->type = type;

	return tx;
}