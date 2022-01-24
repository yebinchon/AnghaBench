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
struct uvd {int dummy; } ;

/* Variables and functions */
 unsigned short FRAMERATE_MAX ; 
 int /*<<< orphan*/  FRAMERATE_MIN ; 
 int /*<<< orphan*/  FUNC0 (unsigned short,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short framerate ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct uvd *uvd)
{
	unsigned short internal_frame_rate;

	FUNC0(framerate, FRAMERATE_MIN, FRAMERATE_MAX);
	internal_frame_rate = FRAMERATE_MAX - framerate; /* 0=Fast 6=Slow */
	FUNC1(uvd, 0, 0x01, 0x0100);	/* LED On  */
	FUNC1(uvd, 0, internal_frame_rate, 0x0111);
	FUNC1(uvd, 0, 0x01, 0x0114);
	FUNC1(uvd, 0, 0xc0, 0x010c);
}