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
struct tp_tcp_stats {int dummy; } ;
struct pci_dev {int dummy; } ;
struct adapter {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 struct adapter* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct tp_tcp_stats*,struct tp_tcp_stats*) ; 

void FUNC4(struct pci_dev *pdev, struct tp_tcp_stats *v4,
			 struct tp_tcp_stats *v6)
{
	struct adapter *adap = FUNC0(pdev);

	FUNC1(&adap->stats_lock);
	FUNC3(adap, v4, v6);
	FUNC2(&adap->stats_lock);
}