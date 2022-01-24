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
struct sd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,unsigned char*) ; 

__attribute__((used)) static void FUNC2(struct sd *sd)
{
	int i;
	for (i = 0; i < 0x80; i++) {
		unsigned char val = 0;
		FUNC1(sd, i, &val);
		FUNC0("ALi m5602 address 0x%x contains 0x%x", i, val);
	}
	FUNC0("Warning: The ALi m5602 webcam probably won't work "
		"until it's power cycled");
}