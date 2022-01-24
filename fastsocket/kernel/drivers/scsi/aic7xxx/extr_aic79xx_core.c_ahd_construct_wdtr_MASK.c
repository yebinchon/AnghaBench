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
typedef  int u_int ;
struct ahd_softc {int msgout_len; scalar_t__ msgout_index; scalar_t__ msgout_buf; } ;
struct ahd_devinfo {int channel; int target; int lun; } ;

/* Variables and functions */
 char* FUNC0 (struct ahd_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
		   u_int bus_width)
{
	ahd->msgout_index += FUNC2(
			ahd->msgout_buf + ahd->msgout_index, bus_width);
	ahd->msgout_len += 4;
	if (bootverbose) {
		FUNC1("(%s:%c:%d:%d): Sending WDTR %x\n",
		       FUNC0(ahd), devinfo->channel, devinfo->target,
		       devinfo->lun, bus_width);
	}
}