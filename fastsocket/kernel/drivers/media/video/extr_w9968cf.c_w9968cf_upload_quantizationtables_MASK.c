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
typedef  int u16 ;
struct w9968cf_device {int dummy; } ;

/* Variables and functions */
 unsigned int* UV_QUANTABLE ; 
 unsigned int* Y_QUANTABLE ; 
 scalar_t__ FUNC0 (struct w9968cf_device*,int,int) ; 

__attribute__((used)) static int FUNC1(struct w9968cf_device* cam)
{
	u16 a, b;
	int err = 0, i, j;

	err += FUNC0(cam, 0x0010, 0x39); /* JPEG clock enable */

	for (i = 0, j = 0; i < 32; i++, j += 2) {
		a = Y_QUANTABLE[j] | ((unsigned)(Y_QUANTABLE[j+1]) << 8);
		b = UV_QUANTABLE[j] | ((unsigned)(UV_QUANTABLE[j+1]) << 8);
		err += FUNC0(cam, a, 0x40+i);
		err += FUNC0(cam, b, 0x60+i);
	}
	err += FUNC0(cam, 0x0012, 0x39); /* JPEG encoder enable */

	return err;
}