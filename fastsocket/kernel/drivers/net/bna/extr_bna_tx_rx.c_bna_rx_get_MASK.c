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
struct bna_rx_mod {int /*<<< orphan*/  rx_active_q; int /*<<< orphan*/  rx_free_count; int /*<<< orphan*/  rx_free_q; } ;
struct bna_rx {int type; int /*<<< orphan*/  qe; } ;
typedef  enum bna_rx_type { ____Placeholder_bna_rx_type } bna_rx_type ;

/* Variables and functions */
 int BNA_RX_T_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bna_rx *
FUNC4(struct bna_rx_mod *rx_mod, enum bna_rx_type type)
{
	struct list_head	*qe = NULL;
	struct bna_rx *rx = NULL;

	if (type == BNA_RX_T_REGULAR) {
		FUNC0(&rx_mod->rx_free_q, &qe);
	} else
		FUNC1(&rx_mod->rx_free_q, &qe);

	rx_mod->rx_free_count--;
	rx = (struct bna_rx *)qe;
	FUNC2(&rx->qe);
	FUNC3(&rx->qe, &rx_mod->rx_active_q);
	rx->type = type;

	return rx;
}