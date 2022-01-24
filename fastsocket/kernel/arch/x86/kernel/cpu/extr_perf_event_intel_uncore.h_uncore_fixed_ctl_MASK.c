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
struct intel_uncore_box {scalar_t__ pci_dev; } ;

/* Variables and functions */
 int FUNC0 (struct intel_uncore_box*) ; 
 int FUNC1 (struct intel_uncore_box*) ; 

__attribute__((used)) static inline
unsigned FUNC2(struct intel_uncore_box *box)
{
	if (box->pci_dev)
		return FUNC1(box);
	else
		return FUNC0(box);
}