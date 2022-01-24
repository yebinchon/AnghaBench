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
typedef  int u8 ;
struct alauda {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct alauda*,int*) ; 
 int FUNC1 (struct alauda*) ; 

__attribute__((used)) static int FUNC2(struct alauda *al)
{
	u8 buf[2], *b0 = buf, *b1 = buf+1;
	int err;

	err = FUNC0(al, buf);
	if (err < 0)
		return err;

	if ((*b1 & 0x01) == 0) {
		/* door open */
		return -EIO;
	}
	if ((*b0 & 0x80) || ((*b0 & 0x1F) == 0x10)) {
		/* no media ? */
		return -EIO;
	}
	if (*b0 & 0x08) {
		/* media change ? */
		return FUNC1(al);
	}
	return 0;
}