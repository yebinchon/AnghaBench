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
 int FUNC0 (char*,int,int,void const*,char const*,void const*,int const) ; 

int FUNC1(const void *phandle, const char *name, const void *buf,
	       const int buflen)
{
	return FUNC0("setprop", 4, 1, phandle, name, buf, buflen);
}