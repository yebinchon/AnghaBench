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
struct scb {int dummy; } ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  ROLE_UNKNOWN ; 
 char FUNC0 (struct ahd_softc*,struct scb*) ; 
 int FUNC1 (struct scb*) ; 
 int FUNC2 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  SEARCH_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ahd_softc *ahd, struct scb *scb)
{
	int	target;
	char	channel;
	int	lun;

	target = FUNC2(ahd, scb);
	lun = FUNC1(scb);
	channel = FUNC0(ahd, scb);
	
	FUNC4(ahd, target, channel, lun,
			   /*tag*/SCB_LIST_NULL, ROLE_UNKNOWN,
			   CAM_REQUEUE_REQ, SEARCH_COMPLETE);

	FUNC3(ahd, scb);
}