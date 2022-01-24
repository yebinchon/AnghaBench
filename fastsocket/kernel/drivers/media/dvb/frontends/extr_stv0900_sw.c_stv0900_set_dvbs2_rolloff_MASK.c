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
struct stv0900_internal {int chip_id; } ;
typedef  int s32 ;
typedef  enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;

/* Variables and functions */
 int /*<<< orphan*/  MANUALS2_ROLLOFF ; 
 int /*<<< orphan*/  MANUALSX_ROLLOFF ; 
 int /*<<< orphan*/  MATSTR1 ; 
 int /*<<< orphan*/  ROLLOFF_CONTROL ; 
 int FUNC0 (struct stv0900_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stv0900_internal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct stv0900_internal *intp,
					enum fe_stv0900_demod_num demod)
{
	s32 rolloff;

	if (intp->chip_id == 0x10) {
		FUNC1(intp, MANUALSX_ROLLOFF, 1);
		rolloff = FUNC0(intp, MATSTR1) & 0x03;
		FUNC1(intp, ROLLOFF_CONTROL, rolloff);
	} else if (intp->chip_id <= 0x20)
		FUNC1(intp, MANUALSX_ROLLOFF, 0);
	else /* cut 3.0 */
		FUNC1(intp, MANUALS2_ROLLOFF, 0);
}