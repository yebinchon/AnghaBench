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
struct gemtek {unsigned long lastfreq; scalar_t__ muted; } ;

/* Variables and functions */
 int /*<<< orphan*/  BU2614_FMES ; 
 int /*<<< orphan*/  BU2614_FMUN ; 
 int /*<<< orphan*/  BU2614_FREQ ; 
 int /*<<< orphan*/  BU2614_PORT ; 
 int /*<<< orphan*/  BU2614_STDF ; 
 int /*<<< orphan*/  BU2614_SWAL ; 
 int /*<<< orphan*/  BU2614_SWIN ; 
 int /*<<< orphan*/  BU2614_TEST ; 
 int /*<<< orphan*/  GEMTEK_HIGHFREQ ; 
 int /*<<< orphan*/  GEMTEK_LOWFREQ ; 
 int GEMTEK_STDF_3_125_KHZ ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gemtek*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gemtek*) ; 
 int FUNC3 (unsigned long) ; 
 scalar_t__ hardmute ; 
 scalar_t__ keepmuted ; 

__attribute__((used)) static void FUNC4(struct gemtek *gt, unsigned long freq)
{
	if (keepmuted && hardmute && gt->muted)
		return;

	freq = FUNC0(freq, GEMTEK_LOWFREQ, GEMTEK_HIGHFREQ);

	gt->lastfreq = freq;
	gt->muted = 0;

	FUNC1(gt, BU2614_PORT, 0);
	FUNC1(gt, BU2614_FMES, 0);
	FUNC1(gt, BU2614_SWIN, 0);	/* FM-mode	*/
	FUNC1(gt, BU2614_SWAL, 0);
	FUNC1(gt, BU2614_FMUN, 1);	/* GT bit set	*/
	FUNC1(gt, BU2614_TEST, 0);

	FUNC1(gt, BU2614_STDF, GEMTEK_STDF_3_125_KHZ);
	FUNC1(gt, BU2614_FREQ, FUNC3(freq));

	FUNC2(gt);
}