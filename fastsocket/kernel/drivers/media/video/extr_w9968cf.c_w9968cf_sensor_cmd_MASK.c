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
struct w9968cf_device {int /*<<< orphan*/  sensor_sd; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  ioctl ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,void*) ; 

__attribute__((used)) static int
FUNC1(struct w9968cf_device* cam, unsigned int cmd, void* arg)
{
	int rc;

	rc = FUNC0(cam->sensor_sd, core, ioctl, cmd, arg);
	/* The I2C driver returns -EPERM on non-supported controls */
	return (rc < 0 && rc != -EPERM) ? rc : 0;
}