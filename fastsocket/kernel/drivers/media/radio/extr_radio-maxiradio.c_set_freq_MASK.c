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
typedef  int u32 ;
struct maxiradio {int io; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct maxiradio*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct maxiradio*,int) ; 

__attribute__((used)) static void FUNC4(struct maxiradio *dev, u32 freq)
{
	unsigned long int si;
	int bl;
	int io = dev->io;
	int val = FUNC0(freq);

	/* TEA5757 shift register bits (see pdf) */

	FUNC2(0, io); /* 24  search */
	FUNC2(1, io); /* 23  search up/down */

	FUNC2(0, io); /* 22  stereo/mono */

	FUNC2(0, io); /* 21  band */
	FUNC2(0, io); /* 20  band (only 00=FM works I think) */

	FUNC2(0, io); /* 19  port ? */
	FUNC2(0, io); /* 18  port ? */

	FUNC2(0, io); /* 17  search level */
	FUNC2(0, io); /* 16  search level */

	si = 0x8000;
	for (bl = 1; bl <= 16; bl++) {
		FUNC2(val & si, io);
		si >>= 1;
	}

	FUNC1(dev, 1, "Radio freq set to %d.%02d MHz\n",
				freq / 16000,
				freq % 16000 * 100 / 16000);

	FUNC3(dev, 1);
}