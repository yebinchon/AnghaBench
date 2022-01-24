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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 unsigned long AUXMEMSIZE ; 
 unsigned long FUNC0 (struct pci_dev*,int) ; 
 unsigned long FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pci)
{
	unsigned long mem_start = FUNC1(pci, 1);
	unsigned long mem_len = FUNC0(pci, 1);
	unsigned long aux_start = FUNC1(pci, 2);
	unsigned long aux_len = AUXMEMSIZE;

	FUNC2(aux_start, aux_len);
	FUNC2(mem_start, mem_len);
}