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
 int EIO ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int UBI_IO_BAD_VID_HDR ; 

__attribute__((used)) static int FUNC0(int err)
{
	if (err == -EIO || err == -ENOMEM || err == UBI_IO_BAD_VID_HDR ||
	    err == -ETIMEDOUT)
		return 0;
	return 1;
}