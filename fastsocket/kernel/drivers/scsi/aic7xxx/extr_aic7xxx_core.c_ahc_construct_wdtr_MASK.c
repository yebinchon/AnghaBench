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
struct ahc_softc {int msgout_len; scalar_t__ msgout_index; scalar_t__ msgout_buf; } ;
struct ahc_devinfo {int channel; int target; int lun; } ;

/* Variables and functions */
 char* FUNC0 (struct ahc_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
		   u_int bus_width)
{
	ahc->msgout_index += FUNC2(
			ahc->msgout_buf + ahc->msgout_index, bus_width);
	ahc->msgout_len += 4;
	if (bootverbose) {
		FUNC1("(%s:%c:%d:%d): Sending WDTR %x\n",
		       FUNC0(ahc), devinfo->channel, devinfo->target,
		       devinfo->lun, bus_width);
	}
}