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
struct aztech {unsigned long curfreq; int /*<<< orphan*/  lock; int /*<<< orphan*/  io; int /*<<< orphan*/  curvol; scalar_t__ stereo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radio_wait_time ; 
 int /*<<< orphan*/  FUNC3 (struct aztech*) ; 
 int /*<<< orphan*/  FUNC4 (struct aztech*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct aztech *az, unsigned long frequency)
{
	int  i;

	FUNC0(&az->lock);

	az->curfreq = frequency;
	frequency += 171200;		/* Add 10.7 MHz IF		*/
	frequency /= 800;		/* Convert to 50 kHz units	*/

	FUNC3(az);		/*  0: LSB of frequency       */

	for (i = 0; i < 13; i++)	/*   : frequency bits (1-13)  */
		if (frequency & (1 << i))
			FUNC4(az);
		else
			FUNC3(az);

	FUNC3(az);		/* 14: test bit - always 0    */
	FUNC3(az);		/* 15: test bit - always 0    */
	FUNC3(az);		/* 16: band data 0 - always 0 */
	if (az->stereo)		/* 17: stereo (1 to enable)   */
		FUNC4(az);
	else
		FUNC3(az);

	FUNC4(az);		/* 18: band data 1 - unknown  */
	FUNC3(az);		/* 19: time base - always 0   */
	FUNC3(az);		/* 20: spacing (0 = 25 kHz)   */
	FUNC4(az);		/* 21: spacing (1 = 25 kHz)   */
	FUNC3(az);		/* 22: spacing (0 = 25 kHz)   */
	FUNC4(az);		/* 23: AM/FM (FM = 1, always) */

	/* latch frequency */

	FUNC5(radio_wait_time);
	FUNC2(128 + 64 + FUNC6(az->curvol), az->io);

	FUNC1(&az->lock);

	return 0;
}