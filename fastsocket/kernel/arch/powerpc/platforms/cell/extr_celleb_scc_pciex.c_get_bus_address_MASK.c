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
struct pci_controller {scalar_t__ io_base_virt; } ;

/* Variables and functions */
 unsigned long _IO_BASE ; 

__attribute__((used)) static inline unsigned long FUNC0(struct pci_controller *phb,
					    unsigned long port)
{
	return port - ((unsigned long)(phb->io_base_virt) - _IO_BASE);
}