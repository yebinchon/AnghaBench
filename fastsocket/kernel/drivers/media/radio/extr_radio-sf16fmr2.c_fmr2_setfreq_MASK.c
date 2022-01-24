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
struct fmr2 {unsigned long curfreq; int /*<<< orphan*/  io; int /*<<< orphan*/  stereo; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fmr2 *dev)
{
	unsigned long freq = dev->curfreq;

	FUNC1(dev->io);

	/* 0x42 for mono output
	 * 0x102 forward scanning
	 * 0x182 scansione avanti
	 */
	FUNC5(9, 0x2, 3, dev->io);
	FUNC5(16, FUNC0(freq), 2, dev->io);

	FUNC3(dev->io);

	/* wait 0.11 sec */
	FUNC4(110);

	/* NOTE if mute this stop radio
	   you must set freq on unmute */
	dev->stereo = FUNC2(dev->io);
	return 0;
}