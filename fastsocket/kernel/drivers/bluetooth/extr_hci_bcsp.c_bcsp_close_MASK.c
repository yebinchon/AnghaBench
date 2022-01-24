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
struct hci_uart {struct bcsp_struct* priv; } ;
struct bcsp_struct {int /*<<< orphan*/  tbcsp; int /*<<< orphan*/  unrel; int /*<<< orphan*/  rel; int /*<<< orphan*/  unack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bcsp_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hci_uart *hu)
{
	struct bcsp_struct *bcsp = hu->priv;
	hu->priv = NULL;

	FUNC0("hu %p", hu);

	FUNC3(&bcsp->unack);
	FUNC3(&bcsp->rel);
	FUNC3(&bcsp->unrel);
	FUNC1(&bcsp->tbcsp);

	FUNC2(bcsp);
	return 0;
}