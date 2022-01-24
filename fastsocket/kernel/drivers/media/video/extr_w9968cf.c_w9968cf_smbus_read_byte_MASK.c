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
struct w9968cf_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct w9968cf_device*) ; 
 scalar_t__ FUNC1 (struct w9968cf_device*,int) ; 

__attribute__((used)) static int FUNC2(struct w9968cf_device* cam, u8* v)
{
	u8 bit;
	int err = 0;

	*v = 0;
	for (bit = 0 ; bit < 8 ; bit++) {
		*v <<= 1;
		err += FUNC1(cam, 0x0013);
		*v |= (FUNC0(cam) & 0x0008) ? 1 : 0;
		err += FUNC1(cam, 0x0012);
	}

	return err;
}