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
struct si470x_device {scalar_t__ disconnected; } ;

/* Variables and functions */
 int EIO ; 

int FUNC0(struct si470x_device *radio)
{
	if (radio->disconnected)
		return -EIO;
	else
		return 0;
}