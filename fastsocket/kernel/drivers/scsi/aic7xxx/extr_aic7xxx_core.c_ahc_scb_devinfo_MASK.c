#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scb {int flags; TYPE_1__* hscb; } ;
struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int dummy; } ;
typedef  int /*<<< orphan*/  role_t ;
struct TYPE_2__ {int /*<<< orphan*/  scsiid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  ROLE_TARGET ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC1 (struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,struct scb*) ; 
 int SCB_TARGET_SCB ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_devinfo*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
		struct scb *scb)
{
	role_t	role;
	int	our_id;

	our_id = FUNC3(scb->hscb->scsiid);
	role = ROLE_INITIATOR;
	if ((scb->flags & SCB_TARGET_SCB) != 0)
		role = ROLE_TARGET;
	FUNC4(devinfo, our_id, FUNC2(ahc, scb),
			    FUNC1(scb), FUNC0(ahc, scb), role);
}