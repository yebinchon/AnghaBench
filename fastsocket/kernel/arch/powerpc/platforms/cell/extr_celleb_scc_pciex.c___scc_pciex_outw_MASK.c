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
typedef  int u32 ;
typedef  int u16 ;
struct pci_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_controller*,unsigned long,int,int) ; 

__attribute__((used)) static void FUNC1(struct pci_controller *phb,
			     u16 val, unsigned long port)
{
	if ((port & 0x3ul) < 3)
		FUNC0(phb, port, 2, (u32)val);
	else {
		u32 d1 = val & 0x000000FF;
		u32 d2 = (val & 0x0000FF00) >> 8;
		FUNC0(phb, port, 1, d1);
		FUNC0(phb, port + 1, 1, d2);
	}
}