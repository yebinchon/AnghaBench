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
 int EMPTY ; 
 scalar_t__ PIO_FIFO_1 ; 
 scalar_t__ PIO_FIFO_CNT ; 
 scalar_t__ PIO_INT_REG ; 
 int READ_TIMEOUT ; 
 int SCI ; 
 scalar_t__ fastpio ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char*,unsigned int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sym53c416_lock ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 

__attribute__((used)) static __inline__ unsigned int FUNC5(int base, unsigned char *buffer, unsigned int len)
{
	unsigned int orig_len = len;
	unsigned long flags = 0;
	unsigned int bytes_left;
	unsigned long i;
	int timeout = READ_TIMEOUT;

	/* Do transfer */
	FUNC2(&sym53c416_lock, flags);
	while(len && timeout)
	{
		bytes_left = FUNC0(base + PIO_FIFO_CNT); /* Number of bytes in the PIO FIFO */
		if(fastpio && bytes_left > 3)
		{
			FUNC1(base + PIO_FIFO_1, buffer, bytes_left >> 2);
			buffer += bytes_left & 0xFC;
			len -= bytes_left & 0xFC;
		}
		else if(bytes_left > 0)
		{
			len -= bytes_left;
			for(; bytes_left > 0; bytes_left--)
				*(buffer++) = FUNC0(base + PIO_FIFO_1);
		}
		else
		{
			i = jiffies + timeout;
			FUNC3(&sym53c416_lock, flags);
			while(FUNC4(jiffies, i) && (FUNC0(base + PIO_INT_REG) & EMPTY) && timeout)
				if(FUNC0(base + PIO_INT_REG) & SCI)
					timeout = 0;
			FUNC2(&sym53c416_lock, flags);
			if(FUNC0(base + PIO_INT_REG) & EMPTY)
				timeout = 0;
		}
	}
	FUNC3(&sym53c416_lock, flags);
	return orig_len - len;
}