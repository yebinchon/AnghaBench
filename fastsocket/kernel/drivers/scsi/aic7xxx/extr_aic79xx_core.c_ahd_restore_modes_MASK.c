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
typedef  int /*<<< orphan*/  ahd_mode_state ;
typedef  int /*<<< orphan*/  ahd_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ahd_softc *ahd, ahd_mode_state state)
{
	ahd_mode src;
	ahd_mode dst;

	FUNC0(ahd, state, &src, &dst);
	FUNC1(ahd, src, dst);
}