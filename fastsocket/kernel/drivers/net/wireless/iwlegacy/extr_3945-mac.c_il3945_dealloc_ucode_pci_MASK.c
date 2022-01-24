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
struct il_priv {int /*<<< orphan*/  ucode_boot; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  ucode_init_data; int /*<<< orphan*/  ucode_init; int /*<<< orphan*/  ucode_data_backup; int /*<<< orphan*/  ucode_data; int /*<<< orphan*/  ucode_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct il_priv *il)
{
	FUNC0(il->pci_dev, &il->ucode_code);
	FUNC0(il->pci_dev, &il->ucode_data);
	FUNC0(il->pci_dev, &il->ucode_data_backup);
	FUNC0(il->pci_dev, &il->ucode_init);
	FUNC0(il->pci_dev, &il->ucode_init_data);
	FUNC0(il->pci_dev, &il->ucode_boot);
}