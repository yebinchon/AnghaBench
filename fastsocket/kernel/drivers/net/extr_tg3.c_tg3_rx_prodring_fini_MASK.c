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
struct tg3_rx_prodring_set {int /*<<< orphan*/ * rx_jmb; int /*<<< orphan*/  rx_jmb_mapping; int /*<<< orphan*/ * rx_std; int /*<<< orphan*/  rx_std_mapping; int /*<<< orphan*/ * rx_jmb_buffers; int /*<<< orphan*/ * rx_std_buffers; } ;
struct tg3 {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp,
				 struct tg3_rx_prodring_set *tpr)
{
	FUNC3(tpr->rx_std_buffers);
	tpr->rx_std_buffers = NULL;
	FUNC3(tpr->rx_jmb_buffers);
	tpr->rx_jmb_buffers = NULL;
	if (tpr->rx_std) {
		FUNC2(&tp->pdev->dev, FUNC1(tp),
				  tpr->rx_std, tpr->rx_std_mapping);
		tpr->rx_std = NULL;
	}
	if (tpr->rx_jmb) {
		FUNC2(&tp->pdev->dev, FUNC0(tp),
				  tpr->rx_jmb, tpr->rx_jmb_mapping);
		tpr->rx_jmb = NULL;
	}
}