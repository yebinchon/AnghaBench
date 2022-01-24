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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_eeh_check_count ; 
 int /*<<< orphan*/  dev_attr_eeh_config_addr ; 
 int /*<<< orphan*/  dev_attr_eeh_false_positives ; 
 int /*<<< orphan*/  dev_attr_eeh_freeze_count ; 
 int /*<<< orphan*/  dev_attr_eeh_mode ; 
 int /*<<< orphan*/  dev_attr_eeh_pe_config_addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct pci_dev *pdev)
{
	FUNC0(&pdev->dev, &dev_attr_eeh_mode);
	FUNC0(&pdev->dev, &dev_attr_eeh_config_addr);
	FUNC0(&pdev->dev, &dev_attr_eeh_pe_config_addr);
	FUNC0(&pdev->dev, &dev_attr_eeh_check_count);
	FUNC0(&pdev->dev, &dev_attr_eeh_false_positives);
	FUNC0(&pdev->dev, &dev_attr_eeh_freeze_count);
}