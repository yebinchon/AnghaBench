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
struct w9968cf_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct w9968cf_device*,int) ; 

__attribute__((used)) static int FUNC1(struct w9968cf_device* cam)
{
	int err = 0;

	err += FUNC0(cam, 0x0011); /* SDE=1, SDA=0, SCL=1 */
	err += FUNC0(cam, 0x0010); /* SDE=1, SDA=0, SCL=0 */

	return err;
}