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
struct uvd {scalar_t__ user_data; } ;
struct qcm {int /*<<< orphan*/  scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qcm*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcm*) ; 

__attribute__((used)) static void FUNC3(struct uvd *uvd)
{
	struct qcm *cam = (struct qcm *) uvd->user_data;

	FUNC0(cam->scratch);
	FUNC2(cam);
	FUNC1(cam);
}