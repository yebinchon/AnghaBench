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
typedef  int u8 ;
struct pci_dev {int vendor; int device; int subsystem_vendor; int subsystem_device; int class; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int,int,int,int) ; 
 struct pci_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct pci_dev *pci_dev = FUNC1(dev);

	return FUNC0(buf, "pci:v%08Xd%08Xsv%08Xsd%08Xbc%02Xsc%02Xi%02x\n",
		       pci_dev->vendor, pci_dev->device,
		       pci_dev->subsystem_vendor, pci_dev->subsystem_device,
		       (u8)(pci_dev->class >> 16), (u8)(pci_dev->class >> 8),
		       (u8)(pci_dev->class));
}