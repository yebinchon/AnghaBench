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
struct v4l2_capability {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  v4l2_cap; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  card_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_DRIVER_NAME ; 
 int /*<<< orphan*/  CX18_DRIVER_VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
				struct v4l2_capability *vcap)
{
	struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

	FUNC2(vcap->driver, CX18_DRIVER_NAME, sizeof(vcap->driver));
	FUNC2(vcap->card, cx->card_name, sizeof(vcap->card));
	FUNC1(vcap->bus_info, sizeof(vcap->bus_info),
		 "PCI:%s", FUNC0(cx->pci_dev));
	vcap->version = CX18_DRIVER_VERSION; 	    /* version */
	vcap->capabilities = cx->v4l2_cap; 	    /* capabilities */
	return 0;
}