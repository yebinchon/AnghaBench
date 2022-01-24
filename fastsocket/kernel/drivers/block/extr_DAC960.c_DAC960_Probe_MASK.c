#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * disks; } ;
typedef  TYPE_1__ DAC960_Controller_T ;

/* Variables and functions */
 scalar_t__ DAC960_ControllerCount ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ DAC960_MaxControllers ; 
 int DAC960_MaxLogicalDrives ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC8(struct pci_dev *dev, const struct pci_device_id *entry)
{
  int disk;
  DAC960_Controller_T *Controller;

  if (DAC960_ControllerCount == DAC960_MaxControllers)
  {
	FUNC2("More than %d DAC960 Controllers detected - "
                       "ignoring from Controller at\n",
                       NULL, DAC960_MaxControllers);
	return -ENODEV;
  }

  Controller = FUNC1(dev, entry);
  if (!Controller)
	return -ENODEV;

  if (!FUNC4(Controller)) {
  	FUNC3(Controller);
	return -ENODEV;
  }

  for (disk = 0; disk < DAC960_MaxLogicalDrives; disk++) {
        FUNC7(Controller->disks[disk], FUNC6(Controller, disk));
        FUNC5(Controller->disks[disk]);
  }
  FUNC0(Controller);
  return 0;
}