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
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,int) ; 
 char* output_buffer ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(const unsigned char *str, int len)
{
	/* Move SPC forward if we are single-stepping. */
	asm("spchere:");
	asm("move $spc, $r10");
	asm("cmp.d spchere, $r10");
	asm("bne nosstep");
	asm("nop");
	asm("move.d spccont, $r10");
	asm("move $r10, $spc");
	asm("nosstep:");

        output_buffer[0] = 'O';
        FUNC0(&output_buffer[1], (unsigned char *)str, len);
        FUNC1(output_buffer);

	asm("spccont:");
}