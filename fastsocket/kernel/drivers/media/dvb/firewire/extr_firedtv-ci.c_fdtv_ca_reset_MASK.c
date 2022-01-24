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
struct firedtv {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (struct firedtv*) ; 

__attribute__((used)) static int FUNC1(struct firedtv *fdtv)
{
	return FUNC0(fdtv) ? -EFAULT : 0;
}