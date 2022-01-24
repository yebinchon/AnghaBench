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
struct atmtcp_dev_data {scalar_t__ persist; int /*<<< orphan*/ * vcc; } ;
struct atm_vcc {int /*<<< orphan*/ * dev_data; } ;
struct atm_dev {int /*<<< orphan*/ * dev_data; } ;

/* Variables and functions */
 struct atmtcp_dev_data* FUNC0 (struct atm_dev*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct atmtcp_dev_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct atm_vcc *vcc)
{
	struct atm_dev *atmtcp_dev;
	struct atmtcp_dev_data *dev_data;

	atmtcp_dev = (struct atm_dev *) vcc->dev_data;
	dev_data = FUNC0(atmtcp_dev);
	dev_data->vcc = NULL;
	if (dev_data->persist) return;
	atmtcp_dev->dev_data = NULL;
	FUNC2(dev_data);
	FUNC1(atmtcp_dev);
	vcc->dev_data = NULL;
	FUNC3(THIS_MODULE);
}