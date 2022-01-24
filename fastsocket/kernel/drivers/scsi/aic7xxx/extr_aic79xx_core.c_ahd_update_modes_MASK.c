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
struct ahd_softc {int dummy; } ;
typedef  int ahd_mode_state ;
typedef  int /*<<< orphan*/  ahd_mode ;

/* Variables and functions */
 int AHD_SHOW_MODEPTR ; 
 int /*<<< orphan*/  MODE_PTR ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void
FUNC4(struct ahd_softc *ahd)
{
	ahd_mode_state mode_ptr;
	ahd_mode src;
	ahd_mode dst;

	mode_ptr = FUNC1(ahd, MODE_PTR);
#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_MODEPTR) != 0)
		printf("Reading mode 0x%x\n", mode_ptr);
#endif
	FUNC0(ahd, mode_ptr, &src, &dst);
	FUNC2(ahd, src, dst);
}