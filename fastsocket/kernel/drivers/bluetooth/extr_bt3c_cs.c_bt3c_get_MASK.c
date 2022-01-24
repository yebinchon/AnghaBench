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
 scalar_t__ DATA_H ; 
 scalar_t__ DATA_L ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline unsigned short FUNC1(unsigned int iobase)
{
	unsigned short value = FUNC0(iobase + DATA_L);

	value |= FUNC0(iobase + DATA_H) << 8;

	return value;
}