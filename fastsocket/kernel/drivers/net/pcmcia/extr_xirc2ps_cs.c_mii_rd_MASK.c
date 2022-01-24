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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int,int) ; 

__attribute__((used)) static unsigned
FUNC5(unsigned int ioaddr,	u_char phyaddr, u_char phyreg)
{
    int i;
    unsigned data=0, m;

    FUNC0(2);
    for (i=0; i < 32; i++)		/* 32 bit preamble */
	FUNC3(ioaddr, 1);
    FUNC4(ioaddr, 0x06, 4); 	/* Start and opcode for read */
    FUNC4(ioaddr, phyaddr, 5);	/* PHY address to be accessed */
    FUNC4(ioaddr, phyreg, 5);	/* PHY register to read */
    FUNC2(ioaddr);			/* turn around */
    FUNC1(ioaddr);

    for (m = 1<<15; m; m >>= 1)
	if (FUNC1(ioaddr))
	    data |= m;
    FUNC2(ioaddr);
    return data;
}