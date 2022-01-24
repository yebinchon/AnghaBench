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
typedef  int /*<<< orphan*/  u_int ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_MODE_CCHAN_MSK ; 
 int /*<<< orphan*/  SNSCB_QOFF ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC3(struct ahd_softc *ahd)
{
	u_int oldvalue;

	FUNC0(ahd, AHD_MODE_CCHAN_MSK, AHD_MODE_CCHAN_MSK);
	oldvalue = FUNC1(ahd, SNSCB_QOFF);
	FUNC2(ahd, SNSCB_QOFF, oldvalue);
	return (oldvalue);
}