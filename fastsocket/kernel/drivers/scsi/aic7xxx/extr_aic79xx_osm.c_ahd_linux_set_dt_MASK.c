#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {scalar_t__ channel; int /*<<< orphan*/  id; TYPE_1__ dev; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_4__ {unsigned int ppr_options; unsigned int period; unsigned int width; int /*<<< orphan*/  offset; } ;
struct ahd_initiator_tinfo {TYPE_2__ goal; } ;
struct ahd_devinfo {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  this_id; scalar_t__ hostdata; } ;

/* Variables and functions */
 int AHD_SHOW_DV ; 
 int /*<<< orphan*/  AHD_SYNCRATE_MAX ; 
 int /*<<< orphan*/  AHD_SYNCRATE_ULTRA2 ; 
 int /*<<< orphan*/  AHD_TRANS_GOAL ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned int MSG_EXT_PPR_DT_REQ ; 
 unsigned int MSG_EXT_PPR_IU_REQ ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int ahd_debug ; 
 struct ahd_initiator_tinfo* FUNC1 (struct ahd_softc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_target*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,unsigned long*) ; 
 char* FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,struct ahd_devinfo*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,unsigned long*) ; 
 struct Scsi_Host* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 scalar_t__ FUNC10 (struct scsi_target*) ; 

__attribute__((used)) static void FUNC11(struct scsi_target *starget, int dt)
{
	struct Scsi_Host *shost = FUNC8(starget->dev.parent);
	struct ahd_softc *ahd = *((struct ahd_softc **)shost->hostdata);
	struct ahd_tmode_tstate *tstate;
	struct ahd_initiator_tinfo *tinfo 
		= FUNC1(ahd,
				      starget->channel + 'A',
				      shost->this_id, starget->id, &tstate);
	struct ahd_devinfo devinfo;
	unsigned int ppr_options = tinfo->goal.ppr_options
		& ~MSG_EXT_PPR_DT_REQ;
	unsigned int period = tinfo->goal.period;
	unsigned int width = tinfo->goal.width;
	unsigned long flags;

#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_DV) != 0)
		printf("%s: %s DT\n", ahd_name(ahd), 
		       dt ? "enabling" : "disabling");
#endif
	if (dt && FUNC10(starget)) {
		ppr_options |= MSG_EXT_PPR_DT_REQ;
		if (!width)
			FUNC3(starget, 1);
	} else {
		if (period <= 9)
			period = 10; /* If resetting DT, period must be >= 25ns */
		/* IU is invalid without DT set */
		ppr_options &= ~MSG_EXT_PPR_IU_REQ;
	}
	FUNC0(&devinfo, shost->this_id, starget->id, 0,
			    starget->channel + 'A', ROLE_INITIATOR);
	FUNC2(ahd, &period, &ppr_options,
			  dt ? AHD_SYNCRATE_MAX : AHD_SYNCRATE_ULTRA2);

	FUNC4(ahd, &flags);
	FUNC6(ahd, &devinfo, period, tinfo->goal.offset,
			 ppr_options, AHD_TRANS_GOAL, FALSE);
	FUNC7(ahd, &flags);
}