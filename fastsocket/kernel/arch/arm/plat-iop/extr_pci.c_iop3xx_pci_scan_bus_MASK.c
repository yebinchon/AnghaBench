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
struct pci_sys_data {int /*<<< orphan*/  busnr; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  iop3xx_ops ; 
 struct pci_bus* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pci_sys_data*) ; 

struct pci_bus *FUNC1(int nr, struct pci_sys_data *sys)
{
	return FUNC0(sys->busnr, &iop3xx_ops, sys);
}