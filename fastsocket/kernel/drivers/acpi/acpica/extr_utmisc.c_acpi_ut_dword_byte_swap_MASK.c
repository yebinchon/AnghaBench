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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

u32 FUNC1(u32 value)
{
	union {
		u32 value;
		u8 bytes[4];
	} out;
	union {
		u32 value;
		u8 bytes[4];
	} in;

	FUNC0();

	in.value = value;

	out.bytes[0] = in.bytes[3];
	out.bytes[1] = in.bytes[2];
	out.bytes[2] = in.bytes[1];
	out.bytes[3] = in.bytes[0];

	return (out.value);
}