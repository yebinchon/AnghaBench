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
 int FULL ; 
 scalar_t__ PIO_FIFO_1 ; 
 scalar_t__ PIO_FIFO_CNT ; 
 scalar_t__ PIO_INT_REG ; 
 unsigned int PIO_SIZE ; 
 unsigned int WRITE_TIMEOUT ; 
 scalar_t__ fastpio ; 
 int FUNC0 (scalar_t__) ; 
 unsigned int jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sym53c416_lock ; 
 scalar_t__ FUNC5 (unsigned int,unsigned long) ; 

__attribute__((used)) static __inline__ unsigned int FUNC6(int base, unsigned char *buffer, unsigned int len)
{
	unsigned int orig_len = len;
	unsigned long flags = 0;
	unsigned int bufferfree;
	unsigned long i;
	unsigned int timeout = WRITE_TIMEOUT;

	/* Do transfer */
	FUNC3(&sym53c416_lock, flags);
	while(len && timeout)
	{
		bufferfree = PIO_SIZE - FUNC0(base + PIO_FIFO_CNT);
		if(bufferfree > len)
			bufferfree = len;
		if(fastpio && bufferfree > 3)
		{
			FUNC2(base + PIO_FIFO_1, buffer, bufferfree >> 2);
			buffer += bufferfree & 0xFC;
			len -= bufferfree & 0xFC;
		}
		else if(bufferfree > 0)
		{
			len -= bufferfree;
			for(; bufferfree > 0; bufferfree--)
				FUNC1(*(buffer++), base + PIO_FIFO_1);
		}
		else
		{
			i = jiffies + timeout;
			FUNC4(&sym53c416_lock, flags);
			while(FUNC5(jiffies, i) && (FUNC0(base + PIO_INT_REG) & FULL) && timeout)
				;
			FUNC3(&sym53c416_lock, flags);
			if(FUNC0(base + PIO_INT_REG) & FULL)
				timeout = 0;
		}
	}
	FUNC4(&sym53c416_lock, flags);
	return orig_len - len;
}