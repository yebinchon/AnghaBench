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
 unsigned char EOC ; 
 scalar_t__ PAR_DATA ; 
 unsigned char WrAddr ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC1(short port, unsigned char reg, unsigned char value)
{
    unsigned char outval;
    FUNC0(EOC | reg, port + PAR_DATA); 	/* Reset the address register. */
    outval = WrAddr | reg;
    FUNC0(outval, port + PAR_DATA);
    FUNC0(outval, port + PAR_DATA);	/* Double write for PS/2. */

    FUNC0((outval & 0xf0) | (value & 0x0f), port + PAR_DATA);
    FUNC0(value & 0x0f, port + PAR_DATA);
    value >>= 4;
    FUNC0(value, port + PAR_DATA);
    FUNC0(0x10 | value, port + PAR_DATA);
    FUNC0(0x10 | value, port + PAR_DATA);

    FUNC0(EOC  | value, port + PAR_DATA); 	/* Reset the address register. */
}