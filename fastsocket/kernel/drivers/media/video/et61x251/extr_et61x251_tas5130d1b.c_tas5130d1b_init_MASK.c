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
struct et61x251_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct et61x251_device*,int,int) ; 

__attribute__((used)) static int FUNC1(struct et61x251_device* cam)
{
	int err = 0;

	err += FUNC0(cam, 0x14, 0x01);
	err += FUNC0(cam, 0x1b, 0x02);
	err += FUNC0(cam, 0x02, 0x12);
	err += FUNC0(cam, 0x0e, 0x60);
	err += FUNC0(cam, 0x80, 0x61);
	err += FUNC0(cam, 0xf0, 0x62);
	err += FUNC0(cam, 0x03, 0x63);
	err += FUNC0(cam, 0x14, 0x64);
	err += FUNC0(cam, 0xf4, 0x65);
	err += FUNC0(cam, 0x01, 0x66);
	err += FUNC0(cam, 0x05, 0x67);
	err += FUNC0(cam, 0x8f, 0x68);
	err += FUNC0(cam, 0x0f, 0x8d);
	err += FUNC0(cam, 0x08, 0x8e);

	return err;
}