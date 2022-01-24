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
struct bna_rxq {int /*<<< orphan*/  qe; } ;
struct bna_rx_mod {int /*<<< orphan*/  rxq_free_count; int /*<<< orphan*/  rxq_free_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bna_rxq *
FUNC2(struct bna_rx_mod *rx_mod)
{
	struct bna_rxq *rxq = NULL;
	struct list_head	*qe = NULL;

	FUNC0(&rx_mod->rxq_free_q, &qe);
	rx_mod->rxq_free_count--;
	rxq = (struct bna_rxq *)qe;
	FUNC1(&rxq->qe);

	return rxq;
}