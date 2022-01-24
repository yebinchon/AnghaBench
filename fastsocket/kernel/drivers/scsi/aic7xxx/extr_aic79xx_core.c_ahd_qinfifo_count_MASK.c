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
typedef  scalar_t__ u_int ;
struct ahd_softc {scalar_t__ qinfifonext; int /*<<< orphan*/  qinfifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_MODE_CCHAN_MSK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ahd_softc*) ; 

__attribute__((used)) static int
FUNC4(struct ahd_softc *ahd)
{
	u_int qinpos;
	u_int wrap_qinpos;
	u_int wrap_qinfifonext;

	FUNC0(ahd, AHD_MODE_CCHAN_MSK, AHD_MODE_CCHAN_MSK);
	qinpos = FUNC3(ahd);
	wrap_qinpos = FUNC1(qinpos);
	wrap_qinfifonext = FUNC1(ahd->qinfifonext);
	if (wrap_qinfifonext >= wrap_qinpos)
		return (wrap_qinfifonext - wrap_qinpos);
	else
		return (wrap_qinfifonext
		      + FUNC2(ahd->qinfifo) - wrap_qinpos);
}