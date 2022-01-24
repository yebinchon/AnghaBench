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
struct mddev {int safemode_delay; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t
FUNC1(struct mddev *mddev, char *page)
{
	int msec = (mddev->safemode_delay*1000)/HZ;
	return FUNC0(page, "%d.%03d\n", msec/1000, msec%1000);
}