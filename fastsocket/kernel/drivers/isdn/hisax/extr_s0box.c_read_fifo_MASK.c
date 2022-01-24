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
typedef  size_t u_char ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int* nibtab ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 

__attribute__((used)) static inline void
FUNC2(unsigned int padr, signed int adr, u_char * data, int size)
{
	int i;
	register u_char n1, n2;
	
	FUNC1(0x1c, padr+2);
	FUNC1(0x14, padr+2);
	FUNC1(adr|0x80, padr);
	FUNC1(0x16, padr+2);
	for (i=0; i<size; i++) {
		FUNC1(0x17, padr+2);
		n1 = (FUNC0(padr+1) >> 3) & 0x17;
		FUNC1(0x16,padr+2);
		n2 = (FUNC0(padr+1) >> 3) & 0x17;
		*(data++)=nibtab[n1] | (nibtab[n2] << 4);
	}
	FUNC1(0x14,padr+2);
	FUNC1(0x1c,padr+2);
	return;
}