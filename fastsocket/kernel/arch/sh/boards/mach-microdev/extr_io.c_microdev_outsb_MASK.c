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

void FUNC1(unsigned long port, const void *buffer, unsigned long count)
{
	volatile unsigned char *port_addr;
	const unsigned char *buf = buffer;

	port_addr = (volatile unsigned char *)FUNC0(port);

	while (count--)
		*port_addr = *buf++;
}