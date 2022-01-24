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
struct ath_hw_ops {int /*<<< orphan*/  proc_txdesc; int /*<<< orphan*/  set_txdesc; int /*<<< orphan*/  get_isr; int /*<<< orphan*/  set_desc_link; int /*<<< orphan*/  rx_enable; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ar9003_hw_get_isr ; 
 int /*<<< orphan*/  ar9003_hw_proc_txdesc ; 
 int /*<<< orphan*/  ar9003_hw_rx_enable ; 
 int /*<<< orphan*/  ar9003_hw_set_desc_link ; 
 int /*<<< orphan*/  ar9003_set_txdesc ; 
 struct ath_hw_ops* FUNC0 (struct ath_hw*) ; 

void FUNC1(struct ath_hw *hw)
{
	struct ath_hw_ops *ops = FUNC0(hw);

	ops->rx_enable = ar9003_hw_rx_enable;
	ops->set_desc_link = ar9003_hw_set_desc_link;
	ops->get_isr = ar9003_hw_get_isr;
	ops->set_txdesc = ar9003_set_txdesc;
	ops->proc_txdesc = ar9003_hw_proc_txdesc;
}