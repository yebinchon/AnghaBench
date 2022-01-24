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

/* Variables and functions */
 long FUNC0 (int,unsigned long,unsigned long,int) ; 

long FUNC1(int fd, unsigned long off_high, unsigned long off_low, unsigned long nb_high, unsigned long nb_low, int flags)
{
	return FUNC0(fd,
				   (off_high << 32) | off_low,
				   (nb_high << 32) | nb_low,
				   flags);
}