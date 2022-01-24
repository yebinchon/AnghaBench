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
 size_t SER_CMD ; 
 size_t SER_DATA ; 
 int TIMEOUT ; 
 unsigned char TX_BUSY ; 
 unsigned char* com1 ; 
 int /*<<< orphan*/  FUNC0 () ; 

void
FUNC1(const unsigned char c)
{
	unsigned char ch;
	int i = 0;

	do {
		ch = com1[SER_CMD];
		FUNC0();
		i++;
		if (i > TIMEOUT)
			break;
	} while (0 == (ch & TX_BUSY));

	com1[SER_DATA] = c;
}