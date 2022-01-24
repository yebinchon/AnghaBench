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
struct pci_slot_attribute {int /*<<< orphan*/  (* show ) (struct pci_slot*,char*) ;} ;
struct pci_slot {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct pci_slot*,char*) ; 
 struct pci_slot* FUNC1 (struct kobject*) ; 
 struct pci_slot_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
					struct attribute *attr, char *buf)
{
	struct pci_slot *slot = FUNC1(kobj);
	struct pci_slot_attribute *attribute = FUNC2(attr);
	return attribute->show ? attribute->show(slot, buf) : -EIO;
}