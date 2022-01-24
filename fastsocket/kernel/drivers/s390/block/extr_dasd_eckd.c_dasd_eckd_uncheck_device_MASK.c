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
struct dasd_eckd_private {int /*<<< orphan*/ * conf_data; scalar_t__ conf_len; int /*<<< orphan*/ * gneq; int /*<<< orphan*/ * vdsneq; int /*<<< orphan*/ * sneq; int /*<<< orphan*/ * ned; } ;
struct dasd_device {scalar_t__ private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dasd_device *device)
{
	struct dasd_eckd_private *private;

	private = (struct dasd_eckd_private *) device->private;
	FUNC0(device);
	private->ned = NULL;
	private->sneq = NULL;
	private->vdsneq = NULL;
	private->gneq = NULL;
	private->conf_len = 0;
	FUNC1(private->conf_data);
	private->conf_data = NULL;
}