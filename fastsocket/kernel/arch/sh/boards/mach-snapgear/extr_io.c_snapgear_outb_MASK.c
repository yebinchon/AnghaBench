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
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned char* FUNC1 (unsigned long) ; 

void FUNC2(unsigned char value, unsigned long port)
{

	if (FUNC0(port))
		*(volatile unsigned char *)port = value;
	else
		*(FUNC1(port)) = value;
}