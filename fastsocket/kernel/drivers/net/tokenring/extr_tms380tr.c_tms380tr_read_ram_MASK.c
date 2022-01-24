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
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned short) ; 
 unsigned char FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  SIFADR ; 
 int /*<<< orphan*/  SIFADX ; 
 int /*<<< orphan*/  SIFINC ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, unsigned char *Data,
				unsigned short Address, int Length)
{
	int i;
	unsigned short old_sifadx, old_sifadr, InWord;

	/* Save the current values */
	old_sifadx = FUNC2(SIFADX);
	old_sifadr = FUNC2(SIFADR);

	/* Page number of adapter memory */
	FUNC3(0x0001, SIFADX);
	/* Address offset in adapter RAM */
        FUNC3(Address, SIFADR);

	/* Copy len byte from adapter memory to system data area. */
	i = 0;
	for(;;)
	{
		InWord = FUNC2(SIFINC);

		*(Data + i) = FUNC0(InWord);	/* Write first byte */
		if(++i == Length)		/* All is done break */
			break;

		*(Data + i) = FUNC1(InWord);	/* Write second byte */
		if (++i == Length)		/* All is done break */
			break;
	}

	/* Restore original values */
	FUNC3(old_sifadx, SIFADX);
	FUNC3(old_sifadr, SIFADR);

	return;
}