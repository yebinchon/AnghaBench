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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned short) ; 

__attribute__((used)) static inline void FUNC2(unsigned int iobase, unsigned short addr, unsigned short value)
{
	FUNC0(iobase, addr);
	FUNC1(iobase, value);
}