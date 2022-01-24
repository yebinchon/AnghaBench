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
struct ahc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  ROLE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC1 (struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ahc_softc *ahc, struct scb *scb)
{
	FUNC3(ahc, FUNC2(ahc, scb),
				FUNC0(ahc, scb),
				FUNC1(scb), SCB_LIST_NULL,
				ROLE_UNKNOWN, CAM_REQUEUE_REQ);
}