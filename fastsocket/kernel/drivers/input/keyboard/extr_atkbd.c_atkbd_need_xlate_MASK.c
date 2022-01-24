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
 int FUNC0 (unsigned char*) ; 
 unsigned char ATKBD_RET_EMUL0 ; 
 unsigned char ATKBD_RET_EMUL1 ; 
 int FUNC1 (int,unsigned long*) ; 
 unsigned char* xl_table ; 

__attribute__((used)) static int FUNC2(unsigned long xl_bit, unsigned char code)
{
	int i;

	if (code == ATKBD_RET_EMUL0 || code == ATKBD_RET_EMUL1)
		return 0;

	for (i = 0; i < FUNC0(xl_table); i++)
		if (code == xl_table[i])
			return FUNC1(i, &xl_bit);

	return 1;
}