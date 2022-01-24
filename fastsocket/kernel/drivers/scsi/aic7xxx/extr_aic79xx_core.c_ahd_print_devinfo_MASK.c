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
struct ahd_devinfo {int target; int lun; } ;

/* Variables and functions */
 char* FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char,int,int) ; 

void
FUNC2(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
	FUNC1("%s:%c:%d:%d: ", FUNC0(ahd), 'A',
	       devinfo->target, devinfo->lun);
}