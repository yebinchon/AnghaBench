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
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH1_VOL_CTL ; 
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct cx231xx *dev)
{
	return FUNC0(dev, PATH1_VOL_CTL, 0x24);
}